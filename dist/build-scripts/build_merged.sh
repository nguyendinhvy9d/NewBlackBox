#!/usr/bin/env bash
# REPO-ROOTED build cho ban MERGED (ship_dec-snapshot + XJProfile fix).
# Luong: compile XJProfile.java -> smali -> drop vao ship_dec-snapshot/smali/classes
#        -> assemble classes + classes2 -> swap 2 dex vao base_xjuid_signed.apk
#        -> zipalign -> sign -> dist/XJangJu-MERGED-arm64.apk
# Chay lai moi khi XJProfile.java (hoac smali engine ship_dec) doi.
set -e
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NBB="$(cd "$HERE/../.." && pwd)"
SNAP="$NBB/engine-src/ship_dec-snapshot"
TOOLS="/d/test/XJangApp/engine-repack/tools"
export JAVA_HOME="${JAVA_HOME:-/c/Program Files/Microsoft/jdk-17.0.21.21-hotspot}"
JAVAC="$JAVA_HOME/bin/javac.exe"
JAVA="$JAVA_HOME/bin/java.exe"
ANDROID_JAR="${ANDROID_JAR:-/d/Android/Sdk/platforms/android-34/android.jar}"
D8="${D8:-/d/Android/Sdk/build-tools/35.0.0/d8.bat}"
ED="$TOOLS/APKEditor.jar"
SIGNER="$TOOLS/uber-apk-signer.jar"
ZA="/d/Android/Sdk/build-tools/35.0.0/zipalign.exe"
W(){ cygpath -w "$1"; }

SRC="$NBB/dist/native-src/XJProfile.java"
BASE="$SNAP/base_xjuid_signed.apk"
CLS="$SNAP/smali/classes"
CLS2="$SNAP/smali/classes2"
WORK="$NBB/engine-src/_build_merged"
OUT="$NBB/dist/XJangJu-MERGED-arm64.apk"

[ -f "$BASE" ] || { echo "ERR: thieu $BASE"; exit 1; }
[ -d "$CLS" ] && [ -d "$CLS2" ] || { echo "ERR: thieu smali classes/classes2"; exit 1; }

rm -rf "$WORK"; mkdir -p "$WORK/out" "$WORK/dexout" "$WORK/smali_xj"

echo "[1] javac XJProfile.java"
cp "$SRC" "$WORK/XJProfile.java"
"$JAVAC" -XDstringConcat=inline -classpath "$(W "$ANDROID_JAR")" \
  -d "$(W "$WORK/out")" "$(W "$WORK/XJProfile.java")"

echo "[2] d8 -> dex"
CLASSES=$(find "$WORK/out" -name "*.class")
ARGS=""; for c in $CLASSES; do ARGS="$ARGS $(W "$c")"; done
JAVA_HOME_WIN="$(W "$JAVA_HOME")" cmd //c "$(W "$D8")" --min-api 21 --no-desugaring \
  --lib "$(W "$ANDROID_JAR")" --output "$(W "$WORK/dexout")" $ARGS

echo "[3] baksmali -> smali_xj + drop vao ship_dec classes"
"$JAVA" -cp "$(W "$ED")" org.jf.baksmali.Main disassemble \
  "$(W "$WORK/dexout/classes.dex")" -o "$(W "$WORK/smali_xj")" --api 34
cp "$WORK/smali_xj/io/vanta/fake/XJProfile.smali" "$CLS/io/vanta/fake/XJProfile.smali"
echo "  XJProfile.smali updated (Asia/Tokyo: $(grep -c 'Asia/Tokyo' "$CLS/io/vanta/fake/XJProfile.smali"), describe: $(grep -c describe "$CLS/io/vanta/fake/XJProfile.smali"))"

echo "[4] assemble classes.dex + classes2.dex"
"$JAVA" -cp "$(W "$ED")" org.jf.smali.Main assemble "$(W "$CLS")"  -o "$(W "$WORK/classes.dex")"  --api 34
"$JAVA" -cp "$(W "$ED")" org.jf.smali.Main assemble "$(W "$CLS2")" -o "$(W "$WORK/classes2.dex")" --api 34
echo "  dex sizes: $(stat -c%s "$WORK/classes.dex") + $(stat -c%s "$WORK/classes2.dex")"

echo "[5] swap 2 dex vao base_xjuid_signed"
python -I "$(W "$NBB/dist/swapdex2.py")" "$(W "$BASE")" "$(W "$WORK/classes.dex")" "$(W "$WORK/classes2.dex")" "$(W "$WORK/swapped.apk")"

echo "[6] zipalign -p 4"
"$ZA" -f -p 4 "$(W "$WORK/swapped.apk")" "$(W "$WORK/aligned.apk")"

echo "[7] sign"
"$JAVA" -jar "$(W "$SIGNER")" --apks "$(W "$WORK/aligned.apk")" --allowResign --overwrite 2>&1 | tail -3
cp "$WORK/aligned.apk" "$OUT"
cp "$OUT" "$SNAP/XJangJu-MERGED-arm64.apk"

echo "[8] verify"
python - "$(W "$OUT")" <<'PY'
import sys, zipfile
z=zipfile.ZipFile(sys.argv[1]); n=z.namelist()
print('  classes.dex:', 'classes.dex' in n, ' classes2.dex:', 'classes2.dex' in n)
print('  libxjhook.so:', 'lib/arm64-v8a/libxjhook.so' in n)
PY
echo "DONE: $OUT ($(stat -c%s "$OUT") bytes)"
