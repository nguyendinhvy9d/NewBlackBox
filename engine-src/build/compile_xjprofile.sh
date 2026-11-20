#!/usr/bin/env bash
# REPO-ROOTED: compile dist/native-src/XJProfile.java -> smali and drop it into
# bbdec2-smali. Run this whenever XJProfile.java (fingerprint feed) changes, then
# run rebuild_robust.sh.
set -e
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NBB="$(cd "$HERE/../.." && pwd)"
ESRC="$NBB/engine-src"
export JAVA_HOME="${JAVA_HOME:-/c/Program Files/Microsoft/jdk-17.0.21.21-hotspot}"
JAVAC="$JAVA_HOME/bin/javac.exe"
JAVA="$JAVA_HOME/bin/java.exe"
ANDROID_JAR="${ANDROID_JAR:-/d/Android/Sdk/platforms/android-34/android.jar}"
D8="${D8:-/d/Android/Sdk/build-tools/35.0.0/d8.bat}"
ED="$ESRC/tools/APKEditor.jar"
W(){ cygpath -w "$1"; }

SRC="$NBB/dist/native-src/XJProfile.java"
XJ="$ESRC/_build/xjsrc"
rm -rf "$XJ"; mkdir -p "$XJ/io/vanta/fake" "$XJ/out" "$XJ/dexout" "$XJ/smali_xj"
cp "$SRC" "$XJ/io/vanta/fake/XJProfile.java"

echo "[1] javac"
"$JAVAC" -XDstringConcat=inline -classpath "$(W "$ANDROID_JAR")" \
  -d "$(W "$XJ/out")" "$(W "$XJ/io/vanta/fake/XJProfile.java")"

echo "[2] d8 -> dex"
CLASSES=$(find "$XJ/out" -name "*.class")
ARGS=""; for c in $CLASSES; do ARGS="$ARGS $(W "$c")"; done
JAVA_HOME_WIN="$(W "$JAVA_HOME")" cmd //c "$(W "$D8")" --min-api 21 --no-desugaring \
  --lib "$(W "$ANDROID_JAR")" --output "$(W "$XJ/dexout")" $ARGS

echo "[3] baksmali -> smali_xj"
"$JAVA" -cp "$(W "$ED")" org.jf.baksmali.Main disassemble \
  "$(W "$XJ/dexout/classes.dex")" -o "$(W "$XJ/smali_xj")" --api 34

echo "[4] drop into bbdec2-smali engine tree"
cp "$XJ/smali_xj/io/vanta/fake/XJProfile.smali" "$ESRC/bbdec2-smali/io/vanta/fake/XJProfile.smali"
echo "DONE: XJProfile.smali updated (describe present: $(grep -c describe "$ESRC/bbdec2-smali/io/vanta/fake/XJProfile.smali"))"
