import zipfile, sys
src, so_path, dst = sys.argv[1], sys.argv[2], sys.argv[3]
target = "lib/arm64-v8a/libxjhook.so"
with open(so_path, "rb") as f: sodata = f.read()
zin = zipfile.ZipFile(src, "r")
zout = zipfile.ZipFile(dst, "w")
for item in zin.infolist():
    if item.filename == target: continue
    data = zin.read(item.filename)
    zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
    zi.compress_type = item.compress_type
    zi.external_attr = item.external_attr
    zi.internal_attr = item.internal_attr
    zout.writestr(zi, data)
zi = zipfile.ZipInfo(target)
zi.compress_type = zipfile.ZIP_STORED
zout.writestr(zi, sodata)
zout.close(); zin.close()
print("added", target, len(sodata), "bytes STORED")
