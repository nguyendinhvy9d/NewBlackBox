import sys, zipfile, os

# Swap classes.dex + classes2.dex vao APK base (giu nguyen moi entry khac: .so/res/manifest/chu-ky-slot).
orig = sys.argv[1]        # base apk (co san lib/res/manifest)
dex1 = sys.argv[2]        # classes.dex moi
dex2 = sys.argv[3]        # classes2.dex moi
out  = sys.argv[4]

d1 = open(dex1, "rb").read()
d2 = open(dex2, "rb").read()
repl = {"classes.dex": d1, "classes2.dex": d2}
seen = set()

zin = zipfile.ZipFile(orig, "r")
with zipfile.ZipFile(out, "w") as zout:
    for item in zin.infolist():
        data = zin.read(item.filename)
        if item.filename in repl:
            data = repl[item.filename]
            seen.add(item.filename)
        zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
        zi.compress_type = item.compress_type
        zi.external_attr = item.external_attr
        zi.internal_attr = item.internal_attr
        zi.create_system = item.create_system
        zout.writestr(zi, data)
zin.close()
missing = set(repl) - seen
print("swapped:", sorted(seen), "sizes:", len(d1), len(d2))
if missing:
    print("WARN: base thieu entry:", sorted(missing))
print("wrote:", out, os.path.getsize(out), "bytes")
