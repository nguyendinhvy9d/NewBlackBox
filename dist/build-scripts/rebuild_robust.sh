#!/usr/bin/env bash
# ROBUST pipeline: fresh-decode NEW base engine (correct R ids) + apply engine patches + XJProfile, reassemble.
set -e
SP="/d/Temp/claude/0cc34dc5d8a87999/576e6d76-48c6-4dd1-ad28-258ba31c5029/scratchpad"
NBB="/d/test/XJangApp/engine-virtual/NewBlackBox"
TOOLS="/d/test/XJangApp/engine-repack/tools"
export JAVA_HOME="/c/Program Files/Microsoft/jdk-17.0.21.21-hotspot"
JAVA="$JAVA_HOME/bin/java.exe"
ED="$TOOLS/APKEditor.jar"
SIGNER="$TOOLS/uber-apk-signer.jar"
ZA="/d/Android/Sdk/build-tools/35.0.0/zipalign.exe"
W(){ cygpath -w "$1"; }

ORIG="$NBB/app/build/outputs/apk/release/BlackBox_4.0.0_arm64-v8a-release.apk"
NEWSMALI="$SP/_newengine/newsmali"          # fresh-decoded stock engine from NEW base (by decode_newbase.sh)
BB="$SP/bbdec2/smali"                         # patched (old) engine tree = source of patch files
SO="$NBB/dist/native-src/libxjhook.so"
WORK="$SP/_xjbuild2"
OUT="$NBB/dist/XJangJu-arm64.apk"

# Engine patch files to overlay from bbdec2 onto fresh decode (engine logic only, NO R refs).
# NOTE: inner-class files contain a literal '$' - use single quotes, NO eval.
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

echo "[1] overlay engine patch files from bbdec2 -> fresh newsmali"
for f in "${PATCH_FILES[@]}"; do
  [ -f "$BB/$f" ] || { echo "  MISSING patch src: $BB/$f"; exit 2; }
  [ -f "$NEWSMALI/$f" ] || { echo "  WARN: target absent (stock lacks it): $f"; }
  cp "$BB/$f" "$NEWSMALI/$f"
  echo "  patched: $f"
done
for f in "${ADD_FILES[@]}"; do
  [ -f "$BB/$f" ] || { echo "  MISSING add src: $BB/$f"; exit 2; }
  cp "$BB/$f" "$NEWSMALI/$f"
  echo "  added:   $f"
done

echo "[2] assemble patched newsmali -> classes.dex"
rm -rf "$WORK"; mkdir -p "$WORK"
"$JAVA" -cp "$(W "$ED")" org.jf.smali.Main assemble "$(W "$NEWSMALI")" -o "$(W "$WORK/classes.dex")" --api 31
echo "  dex $(stat -c%s "$WORK/classes.dex") bytes"
python - "$(W "$WORK/classes.dex")" <<'PY'
import sys
b=open(sys.argv[1],'rb').read()
print('  describe:',b.count(b'describe'),' XJProfile:',b.count(b'Lio/vanta/fake/XJProfile;'))
PY

echo "[3] swap classes.dex into fresh base"
python -I "$(W "$NBB/dist/swapdex.py")" "$(W "$ORIG")" "$(W "$WORK/classes.dex")" "$(W "$WORK/swapped.apk")"
echo "[4] add native libxjhook.so"
python -I "$(W "$SP/addso.py")" "$(W "$WORK/swapped.apk")" "$(W "$SO")" "$(W "$WORK/withso.apk")"
echo "[5] zipalign -p 4"
"$ZA" -f -p 4 "$(W "$WORK/withso.apk")" "$(W "$WORK/aligned.apk")"
echo "[6] sign"
"$JAVA" -jar "$(W "$SIGNER")" --apks "$(W "$WORK/aligned.apk")" --allowResign --overwrite 2>&1 | tail -3
cp "$WORK/aligned.apk" "$OUT"
echo "DONE: $OUT ($(stat -c%s "$OUT") bytes)"
