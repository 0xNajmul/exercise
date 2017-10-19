# open a file // w for write
op = open("python/IO/file.txt","w")

print("file name : ",op.name)
print("file mode : ",op.mode)
print("file closed : ",op.closed)

op.write("this is test")

op.close()

# appen a text // a for append
op = open("python/IO/file.txt","a")
op.write(" this is another text")

op.close()
print("file closed : ",op.closed)