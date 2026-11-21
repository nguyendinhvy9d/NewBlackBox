import sys, zipfile, os

# Thay 1 entry (vd lib/arm64-v8a/libxjhook.so) trong APK, giu nguyen moi entry khac + compression.
apk = sys.argv[1]
entry = sys.argv[2]        # duong dan trong apk
newfile = sys.argv[3]      # file .so moi
out = sys.argv[4]

data = open(newfile, "rb").read()
zin = zipfile.ZipFile(apk, "r")
replaced = False
with zipfile.ZipFile(out, "w") as zout:
    for item in zin.infolist():
        d = zin.read(item.filename)
        if item.filename == entry:
            d = data
            replaced = True
        zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
        zi.compress_type = item.compress_type
        zi.external_attr = item.external_attr
        zi.internal_attr = item.internal_attr
        zi.create_system = item.create_system
        zout.writestr(zi, d)
zin.close()
print("replaced", entry, ":", replaced, "newsize", len(data))
print("wrote", out, os.path.getsize(out))
