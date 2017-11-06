import hashlib

md5 = hashlib.md5(b'Najmul')
print(md5.hexdigest())

sha1 = hashlib.sha1(b'Najmul')
print(sha1.hexdigest())

sha224 = hashlib.sha224(b'Najmul')
print(sha224.hexdigest())

sha256 = hashlib.sha256(b'Najmul')
print(sha256.hexdigest())

sha384 = hashlib.sha384(b'Najmul')
print(sha384.hexdigest())

sha512 = hashlib.sha512(b'Najmul')
print(sha512.hexdigest())