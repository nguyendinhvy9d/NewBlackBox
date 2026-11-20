# Báo cáo phiên 20/11 (tối) — bản MERGED + chẩn đoán GMS "kiểm tra thông tin" treo

## Đã làm xong + commit (git repo NewBlackBox)
- `086aa5ff` cứu engine-src khỏi scratchpad
- `3badb6db` checkpoint WIP UI 1-app
- `25c0219c` clearUserData vào facade VantaCore (Làm mới ô) — build xanh
- `9b1b599f` sửa engine bbdec2 THIẾU Xj* (XjBootKicker...) -> hết treo splash TikTok
- `97d85b5b` vá vân tay: 2 ô khác model + bỏ self-entry host (pool atoll + offset uid ở ensure()+describe())

## Bản MERGED (bản giao hiện tại, ĐÃ test chạy thật)
- File: `dist/XJangJu-MERGED-arm64.apk` (7.596.832 byte, buildId `90b22e85...`) + copy ở scratchpad + ship_dec-snapshot.
- = **ship_dec (session 576e6d76, đã test) + fix vân tay của tao**. ship_dec có: UI mới + account-clear (xjClearUserData ở classes2/MainActivity) + vá LINE (ActivityStack 3125, xjFindRecAny) + uid + webview + engine Xj* đầy đủ.
- Cách dựng: assemble `ship_dec/smali/classes` + `classes2` -> swap cả 2 dex vào `xjuid_signed.apk` (lấy .so/resource) -> ký. Snapshot ship_dec đóng băng ở `engine-src/ship_dec-snapshot/` để tái lập.
- ⚠️ engine-src/bbdec2-smali hiện là engine v4.2.0 (CŨ hơn ship_dec) — pipeline rebuild_robust.sh KHÔNG dựng ra bản MERGED. Muốn tái lập MERGED phải dùng ship_dec-snapshot.

## Test trên OPPO CPH2159 (Reno5, Android 13, atoll) — ĐẠT
- TikTok Lite chạy (feed, nút P). 2 ô model khác nhau (M2003J6CI/M2003J6B2G rồi M2003J6B1I/RMX2061), không trùng dữ liệu (test login 2 nick username + sự kiện — mỗi ô ưu đãi người-mới riêng, không bị cờ thiết bị đã tham gia).

## LỖI ĐANG MỞ: Google login — bước "Đang kiểm tra thông tin..." TREO
### Chẩn đoán (có logcat)
- BẬT GMS cho ô: menu ⋮ Hub -> **Google Play (GMS)** -> GMS Manager -> bật toggle User 0/1. Sau đó ô có badge `· GMS` + có Cửa hàng Google. (ĐÂY là tiền đề, phải bật trước khi dùng Google.)
- Đăng nhập Google qua Play Store (Cửa hàng Google) trong ô: email ✓ + pass ✓ (KHÔNG bị bắt "xác minh đó là bạn") + "Tôi đồng ý" (điều khoản) ✓. Logcat: `CHECKIN_COMPLETE` fire + `CheckinCompleteIntentOperation` -> **GMS check-in HOÀN TẤT**. Giờ máy ĐÚNG (không lệch). Tức **bước đăng nhập tài khoản THÀNH CÔNG**.
- NHƯNG sau đó kẹt "Đang kiểm tra thông tin..." (~3 phút, spinner chạy). Back ra: màn "Chúng tôi đang cập nhật Google Play cho bạn" -> **"⚠ Không hoàn tất được quá trình cập nhật — sẽ sớm thử lại"**. Logcat: **`Finsky: Completed 1 account content syncs with 0 successful`**.
- Xoá logcat chờ 5s: 0 CHECKIN_COMPLETE, không lỗi loop -> **KHÔNG phải vòng lặp vô hạn**; là bước Play Store (Finsky) **tự cập nhật + đồng bộ nội dung account SAU đăng nhập bị FAIL**.

### Kết luận nguyên nhân
Treo KHÔNG ở đăng nhập (đã xong) mà ở **Play Store/Finsky post-login: self-update + account content-sync thất bại** trong GMS ảo hóa. Khớp blocker GMS trung tâm đã ghi: **Phenotype COMMIT backend (ProtoDataStore/content-provider route rỗng)** — config/sync không commit được nên Finsky sync 0 thành công, Play tự-update không xong.

### CHƯA xong (cần làm tiếp)
1. **Xác định bản lề**: account Google ĐÃ thêm vào ô chưa dùng được cho LINE/TikTok "Tiếp tục với Google"? (chưa test xong — nếu DÙNG được thì treo chỉ cosmetic; nếu KHÔNG thì là blocker thật cần vá phenotype/Finsky backend ở engine).
2. Nếu blocker thật: vá Phenotype COMMIT backend trong engine ảo (io.vanta GMS) — việc sâu, thuộc mảng session 576e6d76 ([[project_xjangju_gms_fix]]).
3. LINE đăng ký bằng Google: phải chọn quốc gia **Vietnam/Malaysia/Singapore** (Nhật đòi số điện thoại; VN/MY/SG mới hiện "Tiếp tục với Google" phi-phone).

### Lưu ý thao tác (để khỏi phí thời gian)
- Tọa độ tap: screenshot hiển thị 900x2400, nhân 1.2 ra tọa độ gốc (1080x2400). Field Google email ở gốc ~(540,1104), KHÔNG phải (450,920) (đó là link "Tìm hiểu thêm").
- Gõ email dài vào field Google: `input text` dễ rớt ký tự do field validate async -> gõ ĐÚNG field + kiểm screenshot trước khi bấm Tiếp theo. adb KHÔNG set clipboard được trên máy này.
- Bước "Đang kiểm tra thông tin" đôi lúc chậm bình thường (mạng), nhưng nếu kèm "Không hoàn tất cập nhật"/Finsky 0-sync thì là lỗi backend ở trên.
