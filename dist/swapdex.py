import sys, zipfile, shutil, os

orig = sys.argv[1]       # original APK (pristine)
newdex = sys.argv[2]     # new classes.dex
out = sys.argv[3]        # output APK

with open(newdex, "rb") as f:
    dexdata = f.read()

zin = zipfile.ZipFile(orig, "r")
# Preserve per-entry compression; replace only classes.dex
with zipfile.ZipFile(out, "w") as zout:
    replaced = False
    for item in zin.infolist():
        data = zin.read(item.filename)
        if item.filename == "classes.dex":
            data = dexdata
            replaced = True
        # Rebuild ZipInfo preserving name + compression method
        zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
        zi.compress_type = item.compress_type
        zi.external_attr = item.external_attr
        zi.internal_attr = item.internal_attr
        zi.create_system = item.create_system
        zout.writestr(zi, data)
    print("replaced classes.dex:", replaced, "size:", len(dexdata))
zin.close()
print("wrote:", out, os.path.getsize(out), "bytes")
