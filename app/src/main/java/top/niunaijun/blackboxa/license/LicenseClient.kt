package top.niunaijun.blackboxa.license

import android.content.Context
import android.os.Build
import android.provider.Settings
import android.util.Base64
import org.json.JSONObject
import java.io.ByteArrayOutputStream
import java.math.BigInteger
import java.net.HttpURLConnection
import java.net.URL
import java.security.AlgorithmParameters
import java.security.KeyFactory
import java.security.MessageDigest
import java.security.PublicKey
import java.security.SecureRandom
import java.security.Signature
import java.security.spec.ECGenParameterSpec
import java.security.spec.ECParameterSpec
import java.security.spec.ECPoint
import java.security.spec.ECPublicKeySpec

/**
 * Cổng bản quyền XjangJu — client cho license-server (Cloudflare Worker).
 *
 * Khóa theo MÁY: deviceId = sha256("xjangju:" + ANDROID_ID). Mỗi lần mở app xin
 * một "vé" ký số ở /lease; vé do server ký bằng ECDSA P-256, client xác minh bằng
 * khóa công khai nhúng sẵn (dùng chung với các tool khác). Vé giả "valid=true" vô
 * dụng vì không ký nổi. Mất mạng thì cho mở trong hạn grace ngắn (đã lease gần đây).
 *
 * Đây là PHA 1 (thuần Kotlin, đủ 3 lớp: khóa-máy + online-verify + thu-hồi).
 * PHA 2 sẽ chuyển phần verify vào native libxjhook.so + bật cổng mã-hóa /runtime.
 */
object LicenseClient {
    const val TOOL = "xjangju"
    private const val LEASE_URL = "https://license-server.tieulongnu223344.workers.dev/lease"
    private const val PREFS = "xjlic"

    // Sau khi lease thành công, cho mở app KHÔNG mạng tối đa 3 ngày (chống lạm dụng offline vô hạn).
    private const val GRACE_MS = 3L * 86_400_000L

    // Khóa công khai P-256 (JWK) — copy nguyên từ license-server/.../license-public.cjs.
    private const val PUB_X = "7KBkQIHHdCbq38FdqsEtnd7Sko2rz6xFqOS_AGyAaXc"
    private const val PUB_Y = "Vbf29_pp8ZxMnGRlFbl_LYfpJhBvPdNLb6N17SPbBg8"

    /** Kết quả cổng. ok=true mới cho vào app. */
    data class Result(val ok: Boolean, val reason: String = "", val expiresAt: String = "", val offline: Boolean = false)

    // Mốc hạn license của PHIÊN hiện tại — chỉ được đặt sau một lần lease hợp lệ
    // (online đã verify chữ ký, HOẶC grace offline). Nằm trong RAM, không đọc từ file
    // -> side-door vào MainActivity mà không qua lease thì cờ = 0 -> chức năng bị chặn.
    @Volatile
    var sessionUntil = 0L
        private set

    /** Chức năng (mở clone, tạo ô) chỉ chạy khi phiên này đã có vé hợp lệ. */
    fun sessionOk(): Boolean = sessionUntil > System.currentTimeMillis()

    // ---------- định danh máy ----------
    fun deviceId(ctx: Context): String {
        val aid = try {
            Settings.Secure.getString(ctx.contentResolver, Settings.Secure.ANDROID_ID)
        } catch (e: Exception) { null } ?: "unknown"
        return sha256Hex("$TOOL:$aid")
    }

    fun deviceName(): String = (Build.MANUFACTURER + " " + Build.MODEL).trim().take(60)

    /**
     * Vân tay bản build = sha256 của TẤT CẢ classes*.dex VÀ các lib/**/*.so trong chính APK này
     * (theo thứ tự tên). Sửa/repack bất kỳ dex nào (kể cả smali cổng ở classes2.dex) HOẶC vá
     * native (.so) -> vân tay đổi -> server từ chối cấp vé (mode strict). zipalign/ký lại KHÔNG
     * đổi nội dung entry nên vân tay ổn định.
     */
    fun buildId(ctx: Context): String = try {
        val zf = java.util.zip.ZipFile(ctx.applicationInfo.sourceDir)
        val names = zf.entries().asSequence().map { it.name }
            .filter { it.matches(Regex("classes\\d*\\.dex")) || (it.startsWith("lib/") && it.endsWith(".so")) }
            .sorted().toList()
        val md = MessageDigest.getInstance("SHA-256")
        for (n in names) zf.getInputStream(zf.getEntry(n)).use { ins ->
            val buf = ByteArray(65536); var r = ins.read(buf)
            while (r > 0) { md.update(buf, 0, r); r = ins.read(buf) }
        }
        zf.close()
        md.digest().joinToString("") { "%02x".format(it) }
    } catch (e: Exception) { "" }

    fun versionName(ctx: Context): String = try {
        ctx.packageManager.getPackageInfo(ctx.packageName, 0).versionName ?: ""
    } catch (e: Exception) { "" }

    // ---------- key lưu máy ----------
    fun savedKey(ctx: Context): String = prefs(ctx).getString("key", "")?.trim() ?: ""
    fun saveKey(ctx: Context, key: String) { prefs(ctx).edit().putString("key", key.trim()).apply() }
    fun clearAll(ctx: Context) { prefs(ctx).edit().clear().apply() }

    private fun prefs(ctx: Context) = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    // ---------- cổng chính (gọi ở background thread) ----------
    /** Dùng key đã lưu để xin vé. Không có key -> no_key (hiện màn kích hoạt). */
    fun check(ctx: Context): Result {
        val key = savedKey(ctx)
        if (key.isEmpty()) return Result(false, "no_key")
        return lease(ctx, key)
    }

    /**
     * Kiểm nhanh bằng cache (KHÔNG gọi mạng) cho các điểm vào phụ (shortcut).
     * Cần đã từng kích hoạt online thành công + còn trong grace + chưa quá hạn license.
     */
    fun cachedOk(ctx: Context): Boolean {
        if (savedKey(ctx).isEmpty()) return false
        val p = prefs(ctx)
        val lastGood = p.getLong("lastGoodAt", 0)
        val licExp = p.getString("licenseExpiresAt", "") ?: ""
        if (lastGood <= 0 || licExp.isEmpty()) return false
        val now = System.currentTimeMillis()
        if (now - lastGood > GRACE_MS) return false
        return parseIso(licExp) > now
    }

    /** POST /lease + verify vé. Mất mạng -> xét grace offline. */
    fun lease(ctx: Context, key: String): Result {
        val devId = deviceId(ctx)
        val nonce = randomHex(32)
        val bid = buildId(ctx)
        val ver = versionName(ctx)
        val body = JSONObject().apply {
            put("key", key.trim()); put("tool", TOOL); put("deviceId", devId)
            put("deviceName", deviceName()); put("nonce", nonce)
            if (bid.isNotEmpty()) put("buildId", bid)
            if (ver.isNotEmpty()) put("version", ver)
        }.toString()

        val resp: String = try {
            httpPost(LEASE_URL, body)
        } catch (e: Exception) {
            return offlineGrace(ctx)   // không nối được server
        }

        val json = try { JSONObject(resp) } catch (e: Exception) { return Result(false, "bad_response") }
        if (!json.optBoolean("valid", false)) {
            return Result(false, json.optString("reason", "invalid"))
        }

        val licExp = try {
            verifyLease(json, nonce, devId, bid)
        } catch (e: Exception) {
            return Result(false, "bad_ticket")
        }

        // Hợp lệ -> lưu key + mốc grace + mở cờ phiên.
        saveKey(ctx, key)
        prefs(ctx).edit()
            .putLong("lastGoodAt", System.currentTimeMillis())
            .putString("licenseExpiresAt", licExp)
            .apply()
        sessionUntil = parseIso(licExp)
        return Result(true, "", licExp)
    }

    private fun offlineGrace(ctx: Context): Result {
        val p = prefs(ctx)
        val lastGood = p.getLong("lastGoodAt", 0)
        val licExp = p.getString("licenseExpiresAt", "") ?: ""
        if (lastGood <= 0 || licExp.isEmpty()) return Result(false, "offline_no_cache")
        val now = System.currentTimeMillis()
        if (now - lastGood > GRACE_MS) return Result(false, "offline_expired")
        if (parseIso(licExp) <= now) return Result(false, "expired")
        sessionUntil = parseIso(licExp)
        return Result(true, "", licExp, offline = true)
    }

    // ---------- verify vé ECDSA P-256 (khớp verify-lease.cjs) ----------
    private fun verifyLease(json: JSONObject, nonce: String, devId: String, expectedBuild: String): String {
        val payload = json.getString("payload")
        val sigRaw = b64urlDecode(json.getString("signature"))  // 64 byte r||s (ieee-p1363)
        val der = p1363ToDer(sigRaw)

        val sig = Signature.getInstance("SHA256withECDSA")
        sig.initVerify(publicKey())
        sig.update(payload.toByteArray(Charsets.UTF_8))         // ký trên BYTE CHUỖI base64url, không giải mã
        if (!sig.verify(der)) throw SecurityException("bad_signature")

        val c = JSONObject(String(b64urlDecode(payload), Charsets.UTF_8))
        val issuedAt = c.getLong("issuedAt")
        val expiresAt = c.getLong("expiresAt")
        val ttl = expiresAt - issuedAt
        val licExp = c.getString("licenseExpiresAt")
        if (c.optInt("v", 0) != 1) throw SecurityException("v")
        if (c.optString("nonce") != nonce) throw SecurityException("nonce")
        if (c.optString("deviceId") != devId) throw SecurityException("device")
        if (c.optString("tool") != TOOL) throw SecurityException("tool")
        if (ttl <= 0 || ttl > 300_000) throw SecurityException("ttl")
        if (parseIso(licExp) < expiresAt) throw SecurityException("licexp")
        // Vé phải khớp đúng vân tay build đã gửi (server bind buildId vào vé khi ta gửi).
        if (expectedBuild.isNotEmpty() && c.optString("buildId") != expectedBuild) throw SecurityException("build")
        return licExp
    }

    private fun publicKey(): PublicKey {
        val params = AlgorithmParameters.getInstance("EC")
        params.init(ECGenParameterSpec("secp256r1"))
        val ecSpec = params.getParameterSpec(ECParameterSpec::class.java)
        val x = BigInteger(1, b64urlDecode(PUB_X))
        val y = BigInteger(1, b64urlDecode(PUB_Y))
        return KeyFactory.getInstance("EC").generatePublic(ECPublicKeySpec(ECPoint(x, y), ecSpec))
    }

    // ---------- helpers ----------
    private fun httpPost(urlStr: String, body: String): String {
        val conn = (URL(urlStr).openConnection() as HttpURLConnection).apply {
            requestMethod = "POST"; connectTimeout = 10_000; readTimeout = 10_000
            doOutput = true; instanceFollowRedirects = false
            setRequestProperty("Content-Type", "application/json")
            setRequestProperty("Accept", "application/json")
        }
        try {
            conn.outputStream.use { it.write(body.toByteArray(Charsets.UTF_8)) }
            val code = conn.responseCode
            val stream = if (code in 200..299) conn.inputStream else conn.errorStream
            val text = stream?.bufferedReader()?.use { it.readText() } ?: ""
            if (text.isEmpty()) throw RuntimeException("empty")
            return text
        } finally {
            conn.disconnect()
        }
    }

    private fun sha256Hex(s: String): String =
        MessageDigest.getInstance("SHA-256").digest(s.toByteArray(Charsets.UTF_8))
            .joinToString("") { "%02x".format(it) }

    private fun randomHex(nBytes: Int): String {
        val b = ByteArray(nBytes); SecureRandom().nextBytes(b)
        return b.joinToString("") { "%02x".format(it) }
    }

    private fun b64urlDecode(s: String): ByteArray =
        Base64.decode(s, Base64.URL_SAFE or Base64.NO_PADDING or Base64.NO_WRAP)

    /** Mốc ms (UTC) từ ISO 8601; bỏ phần mili-giây, đủ để so sánh hạn. */
    private fun parseIso(iso: String): Long = try {
        val sdf = java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", java.util.Locale.US)
        sdf.timeZone = java.util.TimeZone.getTimeZone("UTC")
        sdf.parse(iso.take(19))?.time ?: 0
    } catch (e: Exception) { 0 }

    // raw r||s -> DER SEQUENCE{ INTEGER r, INTEGER s }
    private fun p1363ToDer(sig: ByteArray): ByteArray {
        val half = sig.size / 2
        val rEnc = encodeInt(stripLeadingZeros(sig.copyOfRange(0, half)))
        val sEnc = encodeInt(stripLeadingZeros(sig.copyOfRange(half, sig.size)))
        val out = ByteArrayOutputStream()
        out.write(0x30); writeLen(out, rEnc.size + sEnc.size)
        out.write(rEnc); out.write(sEnc)
        return out.toByteArray()
    }
    private fun stripLeadingZeros(b: ByteArray): ByteArray {
        var i = 0; while (i < b.size - 1 && b[i].toInt() == 0) i++
        return b.copyOfRange(i, b.size)
    }
    private fun encodeInt(v: ByteArray): ByteArray {
        val content = if (v[0].toInt() and 0x80 != 0) byteArrayOf(0) + v else v
        val out = ByteArrayOutputStream()
        out.write(0x02); writeLen(out, content.size); out.write(content)
        return out.toByteArray()
    }
    private fun writeLen(out: ByteArrayOutputStream, len: Int) {
        if (len < 0x80) out.write(len) else { out.write(0x81); out.write(len) }
    }
}
