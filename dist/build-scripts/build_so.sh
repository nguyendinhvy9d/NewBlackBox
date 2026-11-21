#!/usr/bin/env bash
# Build libxjhook.so cho bản SHIP khách: KHONG log (XJ_LOG_ENABLED=0 mac dinh) + strip (-s)
# + visibility hidden -> .so sach (khong chuoi tieng Viet/XJHOOK, khong symbol noi bo).
# Debug: them -DXJ_LOG_ENABLED=1 de bat log + self-test maps-scrub.
# Sau khi build: dist/replace_so.py inject vao ship_dec-snapshot/base_xjuid_signed.apk roi build_merged.sh.
set -e
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NBB="$(cd "$HERE/../.." && pwd)"
NS="$NBB/dist/native-src"
NDK="${NDK:-/d/Android/Sdk/ndk/26.1.10909125}"
CLANG="$NDK/toolchains/llvm/prebuilt/windows-x86_64/bin/aarch64-linux-android21-clang"
DBG="${1:-}"   # truyen "debug" de bat log

# 16KB page align (-z max-page-size=16384): BAT BUOC cho Pixel 8/9+ / Android 15+ (trang 16KB),
# extractNativeLibs=false nap .so thang tu APK. Thieu -> "App khong cai duoc" tren may trang 16KB.
P16="-Wl,-z,max-page-size=16384,-z,common-page-size=16384"
FLAGS="-shared -fPIC -O2 -s -fvisibility=hidden $P16"
[ "$DBG" = "debug" ] && FLAGS="-shared -fPIC -O2 -DXJ_LOG_ENABLED=1 $P16"

echo "[build_so] clang $FLAGS (debug=$DBG)"
"$CLANG" $FLAGS -o "$NS/libxjhook.so" "$NS/xjhook.c" -llog
echo "[build_so] OK size=$(stat -c%s "$NS/libxjhook.so")"

# inject vao base + rebuild APK
SNAP="$NBB/engine-src/ship_dec-snapshot"
W(){ cygpath -w "$1"; }
python -I "$NBB/dist/replace_so.py" "$(W "$SNAP/base_xjuid_signed.apk")" "lib/arm64-v8a/libxjhook.so" "$(W "$NS/libxjhook.so")" "$(W "$SNAP/base_new.apk")"
mv "$SNAP/base_new.apk" "$SNAP/base_xjuid_signed.apk"
echo "[build_so] .so injected vao base_xjuid_signed.apk. Chay build_merged.sh de ra APK cuoi."
