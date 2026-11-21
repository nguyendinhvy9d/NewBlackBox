# BÀN GIAO — XJangJu (NewBlackBox engine)

> Cập nhật: 2026-11-21. Tài liệu bàn giao cho dev tiếp nhận. Đọc kỹ phần "Pipeline build" và "Lỗi cần khắc phục".

## 1. Tổng quan
- **XJangJu** = engine ảo hóa (fork NewBlackBox/VirtualApp). Lõi native **prebuilt `libvanta.so`** (namespace `io.vanta`) + **`libxjhook.so`** (custom, mã nguồn `dist/native-src/xjhook.c`).
- Clone **TikTok Lite** (`com.ss.android.ugc.tiktok.lite`) + **LINE** vào các "ô" (cells) với **vân tay độc lập per-ô** (`io/vanta/fake/XJProfile.java`).
- Host package: `com.rekoo.pubgm`. Nhãn hiển thị: XjangJu.
- Phân phối: **apk.smshub.date/apk** (Cloudflare Worker `D:\test\sms-hub`).
- License: Cloudflare Worker `D:\test\license-server`, buildId-bound (mỗi rebuild phải đăng ký buildId mới).

## 2. Phiên bản & trạng thái deploy
| Version | Nội dung | buildId (prefix) | Trạng thái |
|---|---|---|---|
| v4.3.0 | CAO-2: RegisterNatives ẩn symbol + XOR cloak 6 chuỗi | 5edc176f | deployed (cũ) |
| v4.3.1 | SIM getSimState=READY + P2 (XOR SYM_GCU/GCP, đổi tag log XJ*) | 3363e099 | deployed (cũ) |
| **v4.3.2** | **16KB page fix** (cài được Pixel/Android15+) | **102641e8** | ✅ **ĐANG LIVE** |
| v4.3.3 | VPN no-op `initVpnService` | de3642d1 | built, **CHƯA deploy** |
| v4.3.4 | VPN no-op `establishVpn` + MainActivity ép portrait | cd1db3c0 | built, **CHƯA deploy** |

**→ Khách đang nhận v4.3.2.** v4.3.3/4.3.4 đã build + đăng ký buildId + commit nhưng **chưa verify đầy đủ → chưa deploy.**

## 3. LỖI CẦN KHẮC PHỤC (ưu tiên giảm dần)

### 3.1 [CAO] Android 16 — đen màn Google + crash app (lõi native libvanta)
- **Triệu chứng:** trên **POCO X8 Pro Max (2602BPC18G, Android 16 / SDK 36)**: mở Google/Play login → **ĐEN MÀN**; mở TikTok login → **CRASH (tự đóng)**. Android 11–14 (Samsung/OPPO) thì OK.
- **Phân tích (đã soi kỹ):**
  - Tầng smali **OK cho A16**: `AndroidCompatibility` có `Api35PlusHandler` (API 35/36) kế thừa `Api33To34` (prepareDexFile set dex read-only = đúng W^X của A14+); WebView `setDataDirectorySuffix` per-PID (gate SDK≥28) áp cho A16.
  - **Vỡ ở `libvanta.so` (native, PREBUILT, KHÔNG có mã nguồn).** `NativeCore.init(SDK_INT=36)` đẩy version vào libvanta; libvanta hook thẳng ruột ART. Strings cho thấy 3 hook rủi ro trên A16:
    - `art::VMRuntime::setHiddenApiExemptions` — có nhánh lỗi **"HiddenAPI: Failed to load libart.so"** (A16 chuyển libart sang `/apex/com.android.art/lib64/`, khác path cũ).
    - `ApkAssets.nativeLoad` (ResourceLoading) — nhánh **"Exception while trying to hook ApkAssets.nativeLoad"** → fallback. Hook fail = app clone không nạp tài nguyên UI = **đen màn**.
    - `openDexFileNative` / `DexFileHook`.
- **Hướng vá (cần 1 logcat A16 lúc đen để xác định hook nào fail — mở app trong ô là reproduce được, KHÔNG cần login):**
  - Nếu **hidden-API fail** → thêm **bypass bằng Java reflection** (double-reflection gọi `VMRuntime.setHiddenApiExemptions(["L"])`) ở smali `NativeCore`/`BlackBoxLoader`. **KHẢ THI.**
  - Nếu **resource hook fail** → redirect ở tầng Java `AssetManager.addAssetPathInternal` / `ApkAssets.loadFromPath`. Khó nhưng có thể.
  - Nếu **dex native fail** → cần source libvanta hoặc đổi engine BlackBox/VirtualApp đời mới hỗ trợ A16. **Việc lớn.**
- **Tạm thời:** khách dùng **Android ≤14** (ổn định thật, đã test).

### 3.2 [TB] VPN ⇄ Tailscale xung đột (điều khiển farm từ xa)
- Android **chỉ cho 1 VPN/máy**. Engine `ProxyVpnService` (VpnService) bật → **đá Tailscale** → mất adb remote.
- **Đã vá (v4.3.3/4.3.4, commit 8004091e):** no-op `VantaCore.initVpnService()` + `ProxyVpnService.establishVpn()`.
- ⚠️ **CHƯA verify đầy đủ:** test trên POCO A16 adb vẫn rớt khi XJangJu chạy — có thể drop còn do **Tailscale-qua-5G-cellular chập chờn**, không chỉ VPN. Cần verify trên 1 máy A16 ổn định. (Lúc debug nên dùng adb USB trên desktop farm — không dính drop.)

### 3.3 [Chiến lược — không phải bug] Tạo nick mới trong ô = bất khả
- Fresh clone → `NewUserJourneyActivity` → **ms.bd.o** (risk SDK ByteDance đọc cảm biến) + server trả **403** + **KeyAttestation TEE**. Không vá được tầng engine/ảo hóa.
- **Chiến lược:** tạo nick NGOÀI ô (máy thật/SMS) → import DÙNG trong ô.

## 4. Pipeline BUILD (bắt buộc đọc)
1. `dist/build-scripts/build_so.sh [debug]` → compile `libxjhook.so`
   - **16KB aligned:** flag `-Wl,-z,max-page-size=16384,-z,common-page-size=16384` (BẮT BUỘC, không có = fail cài trên máy trang-nhớ-16KB).
   - ship = `-s -fvisibility=hidden` (strip, no-log); `debug` = `-DXJ_LOG_ENABLED=1`.
   - → `dist/replace_so.py` inject vào `engine-src/ship_dec-snapshot/base_xjuid_signed.apk`.
2. `dist/build-scripts/build_merged.sh` → javac `dist/native-src/XJProfile.java` → smali → drop vào `ship_dec-snapshot/smali/classes` → assemble `classes.dex`+`classes2.dex` → swap 2 dex vào base → **`zipalign -P 16`** (căn .so 16KB) → **`apksigner` TRỰC TIẾP** → `dist/XJangJu-MERGED-arm64.apk`.
   - ⚠️ **ĐỪNG dùng `uber-apk-signer`**: nó re-align 4KB → phá 16KB. Đã chuyển sang apksigner.
3. Mỗi build: `python dist/compute_buildid.py <apk>` (= SHA-256 nội dung các entry `classes\d*.dex` + `lib/**.so` theo tên đã sort) → **đăng ký:** `cd D:\test\license-server && node admin-cli.js builds --tool xjangju --add <BID>`.
4. Signing: `~/.android/debug.keystore` alias `androiddebugkey` pass `android` (cert SHA-256 `2899c57c…` — đồng bộ MỌI bản để cài đè được).

## 5. Deploy (smshub.date)
- Stage: `cp dist/XJangJu-MERGED-arm64.apk → D:\test\sms-hub\dist\xjangju.apk`; bump version trong `D:\test\sms-hub\worker\index.js` (dòng `Content-Disposition ... filename="XjangJu-vX.Y.Z-arm64.apk"`).
- Deploy: `cd D:\test\sms-hub && XDG_CONFIG_HOME='C:\Users\giveup\AppData\Roaming\xdg.config' npx wrangler deploy -c wrangler.production.jsonc` (wrangler OAuth cache ở XDG đó).
- **Link khách = `apk.smshub.date/apk`** (apex `smshub.date` TRỐNG — không có record; dùng custom-domain `apk.smshub.date` trong routes wrangler).
- **TikTok Lite cho khách:** `D:\test\XJangApp\input\tiktok-lite.apk` = **v44.9.3** (= đúng bản chạy thật trên OPPO). Hoặc khách cài từ **CH Play** (gói `com.ss.android.ugc.tiktok.lite`, máy ở **mạng Nhật**; Play cài sẵn `split_df_line` = login LINE OK; chặn-vùng là theo **mạng/IP** không theo package). CHƯA host (614MB cần R2).

## 6. Thiết bị test & lưu ý
- **Samsung** `R58M78FAGBH` (Note10, A13, msmnile) — USB. License `XJG-FW4B-XPA5-GH4F`.
- **OPPO** `b85465dd` (CPH2159, A13, atoll) — USB. Có 3 ô (Play/LINE/TikTok). License OPPO = `XJG-8WKH-XYKZ-9QSU` / `XJG-UBPM-...`.
- **POCO X8 Pro Max** `2602BPC18G` (A16/SDK36) — remote Tailscale `100.77.54.88:5555` (CHẬP CHỜN, rớt khi XJangJu chạy). License `XJG-UPLD-ZAPL-LZD4`. Cắm USB ở **DESKTOP-9G8H393** (qua UltraViewer), serial USB `6XVOJZJVV8T8KVEY`, adb bundled ở `%LOCALAPPDATA%\...\tiktok-lite-auto\resources\adb\adb.exe`.
- ⚠️ **ĐỪNG chạy `pm clear --cache-only com.rekoo.pubgm`** → xóa sạch ô + logout license.
- HyperOS (POCO) chặn adb install (`INSTALL_FAILED_USER_RESTRICTED`) → phải bật "Install via USB" (cần tài khoản Xiaomi + SIM).

## 7. Việc đang dở / next step
1. Lấy **1 logcat A16** lúc đen màn (mở app trong ô POCO, không login) → xác định hook libvanta nào fail → vá 3.1.
2. Verify VPN no-op (v4.3.4) trên A16 ổn định → nếu Tailscale sống → deploy v4.3.4.
3. Host TikTok Lite APK cho khách (R2, 614MB) — đã hoãn.
4. Cân nhắc dùng Android ≤14 cho khách tới khi A16 xong.

---
*File này + toàn bộ mã nguồn ở `github.com/AsLodyOfficial/NewBlackBox`. Memory/ghi chú chi tiết trong `C:\Users\giveup\.claude\projects\d--test-tiktok-hotmail-signup\memory\`.*
