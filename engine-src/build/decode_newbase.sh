#!/usr/bin/env bash
# REPO-ROOTED: re-decode the gradle base APK -> newsmali-stock (fresh R ids, STOCK
# engine). Run this only after rebuilding the base APK via gradle (i.e. when the
# app UI / VantaCore changed). Normal engine-only rebuilds do NOT need this.
set -e
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NBB="$(cd "$HERE/../.." && pwd)"
ESRC="$NBB/engine-src"
export JAVA_HOME="${JAVA_HOME:-/c/Program Files/Microsoft/jdk-17.0.21.21-hotspot}"
JAVA="$JAVA_HOME/bin/java.exe"
ED="$ESRC/tools/APKEditor.jar"
W(){ cygpath -w "$1"; }

ORIG="$ESRC/base/BlackBox_4.0.0_arm64-v8a-release.apk"
WORK="$ESRC/_build/_newengine"
rm -rf "$WORK"; mkdir -p "$WORK/dex"

echo "[1] extract classes.dex from base"
python -I - "$(W "$ORIG")" "$(W "$WORK/dex/classes.dex")" <<'PY'
import sys,zipfile
z=zipfile.ZipFile(sys.argv[1]); open(sys.argv[2],'wb').write(z.read('classes.dex'))
print('  extracted',sys.argv[2])
PY

echo "[2] baksmali base classes.dex -> newsmali-stock"
rm -rf "$ESRC/newsmali-stock"
"$JAVA" -cp "$(W "$ED")" org.jf.baksmali.Main disassemble "$(W "$WORK/dex/classes.dex")" -o "$(W "$ESRC/newsmali-stock")" --api 34

echo "[3] sanity diff vs bbdec2-smali patched tree"
echo -n "  differ(both sides): "; diff -rq "$ESRC/newsmali-stock" "$ESRC/bbdec2-smali" 2>/dev/null | grep -c "^Files " || true
echo -n "  only in bbdec2 (added): "; diff -rq "$ESRC/newsmali-stock" "$ESRC/bbdec2-smali" 2>/dev/null | grep -c "Only in $ESRC/bbdec2-smali" || true
echo "DONE: newsmali-stock refreshed"
