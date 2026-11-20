#!/usr/bin/env bash
set -e
SP="/d/Temp/claude/0cc34dc5d8a87999/576e6d76-48c6-4dd1-ad28-258ba31c5029/scratchpad"
NBB="/d/test/XJangApp/engine-virtual/NewBlackBox"
TOOLS="/d/test/XJangApp/engine-repack/tools"
export JAVA_HOME="/c/Program Files/Microsoft/jdk-17.0.21.21-hotspot"
JAVA="$JAVA_HOME/bin/java.exe"
ED="$TOOLS/APKEditor.jar"
W(){ cygpath -w "$1"; }

ORIG="$NBB/app/build/outputs/apk/release/BlackBox_4.0.0_arm64-v8a-release.apk"
WORK="$SP/_newengine"
rm -rf "$WORK"; mkdir -p "$WORK/dex"

echo "[1] extract classes.dex from NEW base"
python - "$(W "$ORIG")" "$(W "$WORK/dex/classes.dex")" <<'PY'
import sys,zipfile
z=zipfile.ZipFile(sys.argv[1]); open(sys.argv[2],'wb').write(z.read('classes.dex'))
print('  extracted',sys.argv[2])
PY

echo "[2] baksmali NEW base classes.dex -> newsmali (has NEW R values, STOCK engine)"
"$JAVA" -cp "$(W "$ED")" org.jf.baksmali.Main disassemble "$(W "$WORK/dex/classes.dex")" -o "$(W "$WORK/newsmali")" --api 34

echo "[3] diff NEW stock engine vs bbdec2 (patched old engine) -> patch set"
diff -rq "$WORK/newsmali" "$SP/bbdec2/smali" 2>/dev/null | grep -vE "Only in $SP/bbdec2/smali.*XJProfile" | head -60
echo "---- counts ----"
echo -n "differ(both sides): "; diff -rq "$WORK/newsmali" "$SP/bbdec2/smali" 2>/dev/null | grep -c "^Files "
echo -n "only in bbdec2 (added): "; diff -rq "$WORK/newsmali" "$SP/bbdec2/smali" 2>/dev/null | grep -c "Only in $SP/bbdec2/smali"
echo -n "only in newbase (removed): "; diff -rq "$WORK/newsmali" "$SP/bbdec2/smali" 2>/dev/null | grep -c "Only in $WORK/newsmali"
