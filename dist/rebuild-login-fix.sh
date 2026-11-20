#!/usr/bin/env bash
# ============================================================================
# XJangBox - VA LOGIN-CRASH FIX (surgical single-dex swap)
# ----------------------------------------------------------------------------
# Van de: io.vanta hook RegisterReceiverWithFeature KHONG strip co NOT_EXPORTED
#   -> Android doi host giu quyen <pkg>.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION
#   -> crash khi mo man LOGIN cua tiktok.lite trong container.
# Fix: va smali hook: flags = (flags & ~0x4) | 0x2  (bo NOT_EXPORTED, them EXPORTED)
#
# TAI SAO KHONG DUNG apktool build full: apktool rebuild LAM HONG app-init
#   ("Failed to initialize app: null"). Chi thay DUY NHAT classes.dex trong
#   APK GOC (gradle release) -> giu nguyen 100% phan con lai -> init OK.
#
# DA KIEM CHUNG (2026-11-12, Note10 R58M78FAGBH): login @phmthtrang2702 THANH CONG,
#   nut "P" (ギフト) van con, khong con crash DYNAMIC_RECEIVER.
# ============================================================================
set -e

NBB="/d/test/XJangApp/engine-virtual/NewBlackBox"
TOOLS="/d/test/XJangApp/engine-repack/tools"
JAVA="/c/Program Files/Microsoft/jdk-17.0.21.21-hotspot/bin/java.exe"
ED="$TOOLS/APKEditor.jar"            # bundle org.jf.smali.Main + baksmali
SIGNER="$TOOLS/uber-apk-signer.jar"
ZA="/d/Android/Sdk/build-tools/35.0.0/zipalign.exe"

ORIG="$NBB/app/build/outputs/apk/release/BlackBox_4.0.0_arm64-v8a-release.apk"
WORK="$NBB/dist/_build"
SMALI_SRC="$1"   # thu muc 'smali' DA VA (classes.dex) tu apktool decode; vd .../bbdec2/smali
OUT="$NBB/dist/XJangBox-login-fixed-arm64.apk"

if [ -z "$SMALI_SRC" ] || [ ! -d "$SMALI_SRC" ]; then
  echo "Dung: $0 <duong-dan-thu-muc-smali-da-va>"
  echo "  (thu muc 'smali' chua io/vanta/fake/service/IActivityManagerProxy\$RegisterReceiverWithFeature.smali DA SUA)"
  exit 1
fi

mkdir -p "$WORK"
echo "[1/5] Assemble smali/ -> classes.dex (api 31)"
"$JAVA" -cp "$ED" org.jf.smali.Main assemble "$SMALI_SRC" -o "$WORK/classes.dex" --api 31

echo "[2/5] Kiem tra patch (and-int ~0x4 / or-int 0x2) co trong dex"
"$JAVA" -cp "$ED" org.jf.baksmali.Main disassemble "$WORK/classes.dex" -o "$WORK/verify" --api 31 >/dev/null
F="$WORK/verify/io/vanta/fake/service/IActivityManagerProxy\$RegisterReceiverWithFeature.smali"
grep -qE "const/4 v3, -0x5" "$F" && grep -qE "const/4 v3, 0x2" "$F" && echo "  OK patch co trong dex" || { echo "  !!! KHONG thay patch"; exit 2; }

echo "[3/5] Swap classes.dex vao APK goc (giu nguyen entry khac)"
python -I "$NBB/dist/swapdex.py" "$ORIG" "$WORK/classes.dex" "$WORK/swapped.apk"

echo "[4/5] zipalign -p 4"
"$ZA" -f -p 4 "$WORK/swapped.apk" "$WORK/aligned.apk"

echo "[5/5] Sign (uber default debug key -> install -r giu duoc container)"
"$JAVA" -jar "$SIGNER" --apks "$WORK/aligned.apk" --allowResign --overwrite
cp "$WORK/aligned.apk" "$OUT"
echo "XONG: $OUT"
echo "Cai: adb -s <device> install -r \"$OUT\"   (install -r de GIU GMS+clone+login)"
