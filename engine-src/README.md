# engine-src — nguồn build engine XJangJu (cứu khỏi scratchpad 2026-11-20)

Bản APK giao khách (`dist-giao/XjangJu-v4.x`) **không** build thẳng từ gradle. Nó
được ghép bằng pipeline smali-swap. Trước 2026-11-20, **nguồn thật của engine chỉ
nằm trong thư mục scratchpad tạm** của một phiên cũ (`D:\Temp\claude\...\scratchpad`)
— repo không giữ bản sao, và không có commit nào. Một lần dọn Temp / reboot là mất
khả năng build lại bản đang bán. Thư mục này kéo toàn bộ nguồn đó vào repo.

## Thành phần
- `base/BlackBox_4.0.0_*-release.apk` — APK base do gradle build (UI app + engine
  io.vanta **nguyên gốc**). Đây là đầu vào pipeline. (Nằm trong `app/build/` vốn bị
  gitignore, nên giữ bản sao ở đây.)
- `newsmali-stock/` — baksmali của `base` (R id mới, engine **chưa vá**). Tái tạo
  được bằng `build/decode_newbase.sh`, nhưng snapshot sẵn để build chạy ngay.
- `bbdec2-smali/` — **cây smali engine ĐÃ VÁ tay = nguồn thật, KHÔNG tái tạo được.**
  Đây là "moat": GmsCallerFix, XJProfile (vân tay), vá LINE SSO, WebView, v.v.
  Pipeline chỉ chép các file `io/vanta/...` được liệt kê trong `rebuild_robust.sh`
  từ đây đè lên `newsmali-stock` (chỉ logic engine, KHÔNG đụng R id/UI).
- `tools/` — `APKEditor.jar` (smali/baksmali + build), `uber-apk-signer.jar`.
- `build/` — script build repo-hoá (tự định vị, trỏ nguồn trong repo này).
- `_build/` — thư mục làm việc tạm, **gitignore** (tự sinh khi chạy).

## Quy trình build
1. (chỉ khi UI/VantaCore đổi) build lại base bằng gradle → `app/build/outputs/...`,
   copy đè vào `base/`, rồi chạy `build/decode_newbase.sh` để làm mới `newsmali-stock`.
2. (chỉ khi `dist/native-src/XJProfile.java` đổi) chạy `build/compile_xjprofile.sh`.
3. Build APK: `bash build/rebuild_robust.sh` → ra `dist/XJangJu-arm64.apk`.

## Toolchain máy (sửa theo máy, truyền qua env nếu khác)
- JDK17: `JAVA_HOME` (mặc định `C:\Program Files\Microsoft\jdk-17.0.21.21-hotspot`)
- Android build-tools 35.0.0: `zipalign`, `d8` (`ZIPALIGN`, `D8`)
- `android.jar` API 34 (`ANDROID_JAR`)

## Lưu ý tái lập
- Ký APK không tất định (có timestamp) → hash khác nhau giữa các lần build là bình
  thường. Kiểm bằng kích thước + đếm `describe`/`XJProfile` mà script in ra ở bước 2.
- Nguồn native `libxjhook.so` (+ `xjhook.c`) ở `dist/native-src/` — build bằng
  `dist/build-scripts/` (ndk), không nằm trong engine-src.
