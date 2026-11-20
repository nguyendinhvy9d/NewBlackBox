package top.niunaijun.blackboxa.view.deviceinfo

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.graphics.Typeface
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.util.TypedValue
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import org.json.JSONObject
import top.niunaijun.blackbox.BlackBoxCore
import top.niunaijun.blackboxa.R
import java.io.File
import java.security.SecureRandom

/**
 * Thong tin thiet bi (ho so spoof) cho tung o (userId).
 * Nguon su that = io.vanta.fake.XJProfile.describe(uid) goi qua reflection
 * (XJProfile nam o classes.dex/engine, cung ClassLoader nen goi duoc).
 */
class DeviceInfoActivity : AppCompatActivity() {

    companion object {
        private const val EXTRA_UID = "userID"
        private const val EXTRA_REMARK = "remark"

        fun start(context: Context, userId: Int, remark: String?) {
            val i = Intent(context, DeviceInfoActivity::class.java)
            i.putExtra(EXTRA_UID, userId)
            i.putExtra(EXTRA_REMARK, remark)
            context.startActivity(i)
        }
    }

    private val bg = Color.parseColor("#F4F5F7")
    private val blue = Color.parseColor("#2563EB")
    private val cardBg = Color.WHITE
    private val labelColor = Color.parseColor("#6B7280")
    private val valueColor = Color.parseColor("#111827")
    private val dividerColor = Color.parseColor("#EEF0F3")

    private var uid = 0
    private val copyBuffer = StringBuilder()

    private fun dp(v: Int): Int = TypedValue.applyDimension(
        TypedValue.COMPLEX_UNIT_DIP, v.toFloat(), resources.displayMetrics
    ).toInt()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        uid = intent.getIntExtra(EXTRA_UID, 0)
        val remark = intent.getStringExtra(EXTRA_REMARK) ?: "User $uid"

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(bg)
            layoutParams = ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT
            )
        }
        root.addView(buildHeader(remark))

        val scroll = ScrollView(this).apply {
            layoutParams = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f
            )
            isFillViewport = true
        }
        val content = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(12), dp(12), dp(12), dp(20))
        }
        scroll.addView(content)
        root.addView(scroll)
        setContentView(root)

        render(content)
    }

    private fun buildHeader(remark: String): View {
        val bar = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setBackgroundColor(blue)
            setPadding(dp(8), dp(10), dp(14), dp(10))
        }
        val back = TextView(this).apply {
            text = "‹"
            setTextColor(Color.WHITE)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 28f)
            setPadding(dp(10), 0, dp(10), dp(4))
            isClickable = true
            setOnClickListener { finish() }
        }
        val titleBox = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
        }
        titleBox.addView(TextView(this).apply {
            text = "Thông tin thiết bị"
            setTextColor(Color.WHITE)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 18f)
            setTypeface(typeface, Typeface.BOLD)
        })
        titleBox.addView(TextView(this).apply {
            text = "Ô: $remark  (uid $uid)"
            setTextColor(Color.parseColor("#DCE4FB"))
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f)
        })
        val copyAll = TextView(this).apply {
            text = "⧉"
            setTextColor(Color.WHITE)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 20f)
            setPadding(dp(12), dp(4), dp(8), dp(4))
            isClickable = true
            setOnClickListener {
                copyToClipboard("XjangJu device", copyBuffer.toString())
                toast("✓ " + getString(R.string.xj_copy_all))
            }
        }
        bar.addView(back)
        bar.addView(titleBox)
        bar.addView(copyAll)
        return bar
    }

    private fun render(content: LinearLayout) {
        val json: JSONObject? = try {
            val cls = Class.forName("io.vanta.fake.XJProfile")
            val m = cls.getMethod("describe", Int::class.javaPrimitiveType)
            val s = m.invoke(null, uid) as String
            JSONObject(s)
        } catch (t: Throwable) {
            null
        }

        if (json == null || json.has("error")) {
            content.addView(TextView(this).apply {
                text = "Không đọc được hồ sơ thiết bị của ô này.\n" +
                        (json?.optString("error") ?: "XJProfile không khả dụng.")
                setTextColor(Color.parseColor("#B91C1C"))
                setPadding(dp(8), dp(8), dp(8), dp(8))
            })
            return
        }

        val spoof = json.optBoolean("spoofModel", false)
        content.addView(banner(spoof))

        // Hồ sơ + nút đổi/về gốc
        content.addView(buildProfileActions(json.optString("salt")))

        // Thiet bi
        card(content, "THIẾT BỊ", listOf(
            "Model" to json.optString("model"),
            "Hãng" to json.optString("brand"),
            "Nhà sản xuất" to json.optString("manufacturer"),
            "Device" to json.optString("device"),
            "Product" to json.optString("product"),
            "Fingerprint" to json.optString("fingerprint")
        ))

        // Phan cung / SoC (giu that de nhat quan)
        card(content, "PHẦN CỨNG (giữ thật – khớp SoC)", listOf(
            "Board/Platform" to json.optString("board"),
            "Chip (SoC)" to json.optString("soc")
        ))

        // SIM / nha mang
        card(content, "SIM / NHÀ MẠNG", listOf(
            "Nhà mạng" to json.optString("carrier"),
            "MCC/MNC" to json.optString("mccmnc"),
            "Quốc gia" to json.optString("country"),
            "IMSI" to json.optString("imsi"),
            "ICCID (SIM)" to json.optString("iccid"),
            "Số thuê bao" to json.optString("line1")
        ))

        // Dinh danh
        card(content, "ĐỊNH DANH", listOf(
            "IMEI" to json.optString("imei"),
            "MEID" to json.optString("meid"),
            "Serial" to json.optString("serial"),
            "Android ID" to json.optString("androidId"),
            "Bluetooth MAC" to json.optString("btMac")
        ))

        content.addView(TextView(this).apply {
            text = "Mỗi ô (userId) là một thiết bị độc lập. Mặc định hồ sơ cố định theo ô; " +
                    "bấm \"Đổi hồ sơ (random)\" để cấp định danh mới cho ô (không đổi userId nên giữ dữ liệu/login). " +
                    "Bấm vào một dòng để sao chép."
            setTextColor(labelColor)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f)
            setPadding(dp(8), dp(14), dp(8), dp(4))
        })
    }

    private fun banner(spoof: Boolean): View {
        val tv = TextView(this)
        val d = GradientDrawable()
        d.cornerRadius = dp(12).toFloat()
        if (spoof) {
            d.setColor(Color.parseColor("#E8F0FE"))
            tv.text = "✓ Đang giả lập thiết bị khác (model + định danh), khớp SoC máy thật."
            tv.setTextColor(Color.parseColor("#1D4ED8"))
        } else {
            d.setColor(Color.parseColor("#FEF3C7"))
            tv.text = "⚠ Máy này chưa có pool SoC phù hợp → giữ model THẬT (vẫn nhất quán). " +
                    "Định danh (IMEI/Serial/ID) vẫn riêng cho ô."
            tv.setTextColor(Color.parseColor("#92400E"))
        }
        tv.background = d
        tv.setPadding(dp(14), dp(12), dp(14), dp(12))
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f)
        val lp = LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
        )
        lp.bottomMargin = dp(12)
        tv.layoutParams = lp
        return tv
    }

    // ----------- Random / Reset hồ sơ -----------

    private val saltDir get() = File("/storage/emulated/0/.xjsalt")
    private fun saltFile() = File(saltDir, uid.toString())

    private fun buildProfileActions(salt: String): View {
        val col = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            val d = GradientDrawable()
            d.cornerRadius = dp(14).toFloat()
            d.setColor(cardBg)
            background = d
            setPadding(dp(14), dp(12), dp(14), dp(12))
            val lp = LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
            )
            lp.bottomMargin = dp(12)
            layoutParams = lp
        }
        col.addView(TextView(this).apply {
            text = "HỒ SƠ THIẾT BỊ"
            setTextColor(labelColor)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f)
            setTypeface(typeface, Typeface.BOLD)
        })
        col.addView(TextView(this).apply {
            text = if (salt.isEmpty()) "Đang dùng: GỐC (cố định theo ô)"
                   else "Đang dùng: hồ sơ mới  #$salt"
            setTextColor(valueColor)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f)
            typeface = Typeface.MONOSPACE
            setPadding(0, dp(4), 0, dp(10))
        })
        val row = LinearLayout(this).apply { orientation = LinearLayout.HORIZONTAL }
        row.addView(actionBtn("🎲 Đổi hồ sơ (random)", blue, Color.WHITE, 1f) { confirmRandom() })
        val gap = View(this).apply { layoutParams = LinearLayout.LayoutParams(dp(10), 1) }
        row.addView(gap)
        row.addView(actionBtn("↺ Về gốc", Color.parseColor("#EEF2FF"), blue, 1f) { confirmRestore() })
        col.addView(row)
        return col
    }

    private fun actionBtn(label: String, bgc: Int, fg: Int, weight: Float, onClick: () -> Unit): View {
        return TextView(this).apply {
            text = label
            setTextColor(fg)
            gravity = Gravity.CENTER
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f)
            setTypeface(typeface, Typeface.BOLD)
            setPadding(dp(10), dp(12), dp(10), dp(12))
            val d = GradientDrawable()
            d.cornerRadius = dp(10).toFloat()
            d.setColor(bgc)
            background = d
            isClickable = true
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, weight)
            setOnClickListener { onClick() }
        }
    }

    private fun confirmRandom() {
        AlertDialog.Builder(this)
            .setTitle("Đổi hồ sơ thiết bị?")
            .setMessage("Ô này sẽ nhận IMEI/Serial/Android ID/MAC… MỚI (model vẫn khớp SoC). " +
                    "Nếu ô đang đăng nhập, nên dùng cho ô CHƯA login để tránh TikTok báo đổi thiết bị.\n\n" +
                    "Ô sẽ được tắt để áp dụng khi mở lại.")
            .setPositiveButton("Đổi") { _, _ -> applyProfile(random = true) }
            .setNegativeButton("Hủy", null)
            .show()
    }

    private fun confirmRestore() {
        AlertDialog.Builder(this)
            .setTitle("Về hồ sơ gốc?")
            .setMessage("Khôi phục hồ sơ mặc định (cố định theo ô). Ô sẽ được tắt để áp dụng khi mở lại.")
            .setPositiveButton("Về gốc") { _, _ -> applyProfile(random = false) }
            .setNegativeButton("Hủy", null)
            .show()
    }

    private fun applyProfile(random: Boolean) {
        Thread {
            var ok = false
            try {
                if (random) {
                    saltDir.mkdirs()
                    val r = SecureRandom()
                    val hex = "0123456789abcdef"
                    val sb = StringBuilder()
                    repeat(8) { sb.append(hex[r.nextInt(16)]) }
                    saltFile().writeText(sb.toString())
                } else {
                    saltFile().delete()
                }
                ok = true
            } catch (t: Throwable) { ok = false }
            // Tắt ô để guest nạp lại hồ sơ mới ở lần mở sau
            try {
                val apps = BlackBoxCore.get().getInstalledApplications(0, uid) ?: emptyList()
                for (ai in apps) {
                    if (ai?.packageName.isNullOrBlank()) continue
                    try { BlackBoxCore.get().stopPackage(ai.packageName, uid) } catch (_: Throwable) {}
                }
            } catch (_: Throwable) {}
            runOnUiThread {
                toast(if (!ok) "Lỗi ghi hồ sơ (kiểm tra quyền lưu trữ)"
                      else if (random) "Đã đổi hồ sơ — mở lại ô để áp dụng"
                      else "Đã về hồ sơ gốc — mở lại ô để áp dụng")
                if (ok) recreate()
            }
        }.start()
    }

    private fun card(parent: LinearLayout, title: String, rows: List<Pair<String, String>>) {
        parent.addView(TextView(this).apply {
            text = title
            setTextColor(labelColor)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f)
            setTypeface(typeface, Typeface.BOLD)
            setPadding(dp(6), dp(10), dp(6), dp(6))
        })
        val box = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            val d = GradientDrawable()
            d.cornerRadius = dp(14).toFloat()
            d.setColor(cardBg)
            background = d
        }
        val lp = LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
        )
        lp.bottomMargin = dp(6)
        box.layoutParams = lp

        rows.forEachIndexed { idx, (label, value) ->
            copyBuffer.append(label).append(": ").append(value).append('\n')
            box.addView(rowView(label, value))
            if (idx < rows.size - 1) {
                box.addView(View(this).apply {
                    setBackgroundColor(dividerColor)
                    layoutParams = LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT, 1
                    ).apply { leftMargin = dp(14) }
                })
            }
        }
        parent.addView(box)
    }

    private fun rowView(label: String, value: String): View {
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(14), dp(10), dp(14), dp(10))
            isClickable = true
            setOnClickListener {
                copyToClipboard(label, value)
                toast(getString(R.string.xj_copied, value))
            }
        }
        row.addView(TextView(this).apply {
            text = label
            setTextColor(labelColor)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f)
        })
        row.addView(TextView(this).apply {
            text = if (value.isEmpty()) "—" else value
            setTextColor(valueColor)
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 15f)
            typeface = Typeface.MONOSPACE
            setTextIsSelectable(true)
        })
        return row
    }

    private fun copyToClipboard(label: String, value: String) {
        try {
            val cm = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
            cm.setPrimaryClip(ClipData.newPlainText(label, value))
        } catch (_: Throwable) {}
    }

    private fun toast(msg: String) {
        Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()
    }
}
