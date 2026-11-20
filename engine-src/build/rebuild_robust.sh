#!/usr/bin/env bash
# ROBUST pipeline (REPO-ROOTED): fresh-decode base engine (correct R ids) +
# overlay engine patches + native libxjhook.so, reassemble & sign.
#
# All SOURCES live inside the repo under engine-src/ (rescued out of scratchpad
# 2026-11-20 so the shipped engine can always be rebuilt). Only the WORK dir and
# toolchain (JDK/Android build-tools) are machine-local.
set -e

# --- self-locate repo root (engine-virtual/NewBlackBox) ---
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NBB="$(cd "$HERE/../.." && pwd)"              # engine-virtual/NewBlackBox
ESRC="$NBB/engine-src"

# --- machine-local toolchain (edit per build machine) ---
export JAVA_HOME="${JAVA_HOME:-/c/Program Files/Microsoft/jdk-17.0.21.21-hotspot}"
JAVA="$JAVA_HOME/bin/java.exe"
ZA="${ZIPALIGN:-/d/Android/Sdk/build-tools/35.0.0/zipalign.exe}"

# --- tools (self-contained in repo) ---
TOOLS="$ESRC/tools"
ED="$TOOLS/APKEditor.jar"
SIGNER="$TOOLS/uber-apk-signer.jar"

W(){ cygpath -w "$1"; }

# --- repo-rooted inputs ---
ORIG="$ESRC/base/BlackBox_4.0.0_arm64-v8a-release.apk"  # gradle base (app UI + stock engine)
NEWSMALI="$ESRC/newsmali-stock"                          # fresh decode of base (NEW R ids)
BB="$ESRC/bbdec2-smali"                                  # patched engine tree = source of patch files
SO="$NBB/dist/native-src/libxjhook.so"                  # native hook lib
WORK="$ESRC/_build"                                      # ephemeral (gitignored)
OUT="$NBB/dist/XJangJu-arm64.apk"

# Engine patch files to overlay from bbdec2 onto fresh decode (engine logic only, NO R refs).
# inner-class files contain a literal '$' - single quotes, NO eval.
PATCH_FILES=(
  'io/vanta/app/BActivityThread.smali'
  'io/vanta/fake/service/IActivityManagerProxy$checkPermission.smali'
  'io/vanta/fake/service/IPermissionManagerProxy.smali'
  'io/vanta/fake/service/IActivityManagerProxy$RegisterReceiver.smali'
  'io/vanta/fake/service/IActivityManagerProxy$RegisterReceiverWithFeature.smali'
  'io/vanta/fake/service/context/providers/SystemProviderStub.smali'
  'io/vanta/fake/service/IPackageManagerProxy$GetPackagesForUid.smali'
  'io/vanta/fake/service/IPackageManagerProxy.smali'
)
ADD_FILES=(
  'io/vanta/fake/XJProfile.smali'
  'io/vanta/fake/service/GmsCallerFix.smali'
  'io/vanta/fake/service/IPackageManagerProxy$GetNameForUid.smali'
)

[ -d "$NEWSMALI" ] || { echo "ERR: $NEWSMALI missing - run decode_newbase.sh first"; exit 1; }
[ -f "$ORIG" ]     || { echo "ERR: base APK missing: $ORIG"; exit 1; }
[ -f "$ED" ]       || { echo "ERR: APKEditor.jar missing: $ED"; exit 1; }
[ -f "$SO" ]       || { echo "ERR: libxjhook.so missing: $SO"; exit 1; }

# Overlay vào BẢN COPY tạm, GIỮ NGUYÊN newsmali-stock (nguồn tracked không bị bẩn).
rm -rf "$WORK"; mkdir -p "$WORK"
SMALI="$WORK/smali"
echo "[0] copy newsmali-stock -> work (giữ stock nguyên vẹn)"
cp -r "$NEWSMALI" "$SMALI"

echo "[1] overlay engine patch files from bbdec2 -> work copy"
for f in "${PATCH_FILES[@]}"; do
  [ -f "$BB/$f" ] || { echo "  MISSING patch src: $BB/$f"; exit 2; }
  [ -f "$SMALI/$f" ] || { echo "  WARN: target absent (stock lacks it): $f"; }
  cp "$BB/$f" "$SMALI/$f"
  echo "  patched: $f"
done
for f in "${ADD_FILES[@]}"; do
  [ -f "$BB/$f" ] || { echo "  MISSING add src: $BB/$f"; exit 2; }
  mkdir -p "$SMALI/$(dirname "$f")"
  cp "$BB/$f" "$SMALI/$f"
  echo "  added:   $f"
done

echo "[2] assemble patched work copy -> classes.dex"
"$JAVA" -cp "$(W "$ED")" org.jf.smali.Main assemble "$(W "$SMALI")" -o "$(W "$WORK/classes.dex")" --api 31
echo "  dex $(stat -c%s "$WORK/classes.dex") bytes"
python - "$(W "$WORK/classes.dex")" <<'PY'
import sys
b=open(sys.argv[1],'rb').read()
print('  describe:',b.count(b'describe'),' XJProfile:',b.count(b'Lio/vanta/fake/XJProfile;'))
PY

echo "[3] swap classes.dex into fresh base"
python -I "$(W "$NBB/dist/swapdex.py")" "$(W "$ORIG")" "$(W "$WORK/classes.dex")" "$(W "$WORK/swapped.apk")"
echo "[4] add native libxjhook.so"
python -I "$(W "$NBB/dist/native-src/addso.py")" "$(W "$WORK/swapped.apk")" "$(W "$SO")" "$(W "$WORK/withso.apk")"
echo "[5] zipalign -p 4"
"$ZA" -f -p 4 "$(W "$WORK/withso.apk")" "$(W "$WORK/aligned.apk")"
echo "[6] sign"
"$JAVA" -jar "$(W "$SIGNER")" --apks "$(W "$WORK/aligned.apk")" --allowResign --overwrite 2>&1 | tail -3
cp "$WORK/aligned.apk" "$OUT"
echo "DONE: $OUT ($(stat -c%s "$OUT") bytes)"
