#!/usr/bin/env bash
set -e
SP="/d/Temp/claude/0cc34dc5d8a87999/576e6d76-48c6-4dd1-ad28-258ba31c5029/scratchpad"
NBB="/d/test/XJangApp/engine-virtual/NewBlackBox"
TOOLS="/d/test/XJangApp/engine-repack/tools"
export JAVA_HOME="/c/Program Files/Microsoft/jdk-17.0.21.21-hotspot"
JAVAC="$JAVA_HOME/bin/javac.exe"
JAVA="$JAVA_HOME/bin/java.exe"
ANDROID_JAR="/d/Android/Sdk/platforms/android-34/android.jar"
D8="/d/Android/Sdk/build-tools/35.0.0/d8.bat"
ED="$TOOLS/APKEditor.jar"

SRC="$NBB/dist/native-src/XJProfile.java"

echo "[0] sync source -> xjsrc"
cp "$SRC" "$SP/xjsrc/io/vanta/fake/XJProfile.java"

rm -rf "$SP/xjsrc/out" "$SP/xjsrc/dexout" "$SP/xjsrc/smali_xj"
mkdir -p "$SP/xjsrc/out" "$SP/xjsrc/dexout" "$SP/xjsrc/smali_xj"

echo "[1] javac (android.jar on classpath; JDK17 bootclasspath for java.*)"
"$JAVAC" -XDstringConcat=inline -classpath "$(cygpath -w "$ANDROID_JAR")" \
  -d "$(cygpath -w "$SP/xjsrc/out")" \
  "$(cygpath -w "$SP/xjsrc/io/vanta/fake/XJProfile.java")"

echo "[1b] classes produced:"
find "$SP/xjsrc/out" -name "*.class"

echo "[2] d8 -> dex (min api 21, no desugar lib)"
CLASSES=$(find "$SP/xjsrc/out" -name "*.class" -printf "%p\n")
# build windows-path arg list
ARGS=""
for c in $CLASSES; do ARGS="$ARGS $(cygpath -w "$c")"; done
JAVA_HOME_WIN="$(cygpath -w "$JAVA_HOME")" cmd //c "$(cygpath -w "$D8")" --min-api 21 --no-desugaring \
  --lib "$(cygpath -w "$ANDROID_JAR")" \
  --output "$(cygpath -w "$SP/xjsrc/dexout")" $ARGS

echo "[2b] dex produced:"
ls -la "$SP/xjsrc/dexout"

echo "[3] baksmali -> smali_xj"
"$JAVA" -cp "$(cygpath -w "$ED")" org.jf.baksmali.Main disassemble \
  "$(cygpath -w "$SP/xjsrc/dexout/classes.dex")" \
  -o "$(cygpath -w "$SP/xjsrc/smali_xj")" --api 34

echo "[3b] XJProfile.smali:"
ls -la "$SP/xjsrc/smali_xj/io/vanta/fake/XJProfile.smali"
grep -c "describe" "$SP/xjsrc/smali_xj/io/vanta/fake/XJProfile.smali"

echo "[4] drop into bbdec2 engine tree"
cp "$SP/xjsrc/smali_xj/io/vanta/fake/XJProfile.smali" \
   "$SP/bbdec2/smali/io/vanta/fake/XJProfile.smali"
echo "DONE: XJProfile.smali updated in bbdec2 (describe present:$(grep -c describe "$SP/bbdec2/smali/io/vanta/fake/XJProfile.smali"))"
