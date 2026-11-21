#!/usr/bin/env python3
# Tai lap buildId cua LicenseClient.buildId(Context) offline.
# Thuat toan (smali LicenseClient): SHA-256 noi dung cac zip-entry co ten:
#   - khop regex ^classes\d*\.dex$  (classes.dex, classes2.dex, ...)  HOAC
#   - bat dau "lib/" VA ket thuc ".so"
# theo THU TU TEN DA SORT (natural String sort). Doc het tung entry, update digest tuan tu.
import sys, re, hashlib, zipfile

def compute(apk):
    rx = re.compile(r"classes\d*\.dex$")
    names = []
    with zipfile.ZipFile(apk) as z:
        for n in z.namelist():
            if (rx.fullmatch(n)) or (n.startswith("lib/") and n.endswith(".so")):
                names.append(n)
        names.sort()  # String natural order (ASCII) == Java String.compareTo
        h = hashlib.sha256()
        for n in names:
            with z.open(n) as f:
                while True:
                    b = f.read(0x10000)
                    if not b:
                        break
                    h.update(b)
    return h.hexdigest(), names

if __name__ == "__main__":
    bid, names = compute(sys.argv[1])
    print(bid)
    sys.stderr.write("entries(%d): %s\n" % (len(names), ", ".join(names)))
