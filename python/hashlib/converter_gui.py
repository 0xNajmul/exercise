from tkinter import *
from tkinter import ttk
import hashlib
root = Tk()

label1 = Label(root,text="Hash Generator",width=60,font="none 12 bold")
label1.pack() 

label2 = Label(root,text="Enter Your Text",width=60,background="white")
label2.pack()

input = Entry(root,width=36)
input.pack(pady=5, padx=20)
input.configure(background="lightgrey")

files = ('MD5', 'SHA-1','SHA-224', 'SHA-256','SHA-384', 'SHA-512')
combo = ttk.Combobox(root, values=files, state='readonly',width=33)
combo.current(0)
combo.pack(pady=10, padx=20) 

def convert():
    inp_data = input.get()
    combo_data = combo.get()
    if(combo_data=='MD5'):
        md5 = hashlib.md5(inp_data.encode())
        final = md5.hexdigest()
        output = Entry(root,width=36)
        output.insert(END, final)
        output.pack(pady=5, padx=20)
        output.configure(background="lightgrey")
    elif(combo_data=='SHA-1'):        
        sha1 = hashlib.sha1(inp_data.encode())
        final = sha1.hexdigest()
        output = Entry(root,width=36)
        output.insert(END, final)
        output.pack(pady=5, padx=20)
        output.configure(background="lightgrey")
    elif(combo_data=='SHA-224'):        
        sha224 = hashlib.sha224(inp_data.encode())
        final = sha224.hexdigest()
        output = Entry(root,width=36)
        output.insert(END, final)
        output.pack(pady=5, padx=20)
        output.configure(background="lightgrey")
    elif(combo_data=='SHA-256'):        
        sha256 = hashlib.sha256(inp_data.encode())
        final = sha256.hexdigest()
        output = Entry(root,width=36)
        output.insert(END, final)
        output.pack(pady=5, padx=20)
        output.configure(background="lightgrey")
    elif(combo_data=='SHA-384'):        
        sha384 = hashlib.sha384(inp_data.encode())
        final = sha384.hexdigest()
        output = Entry(root,width=36)
        output.insert(END, final)
        output.pack(pady=5, padx=20)
        output.configure(background="lightgrey")
    elif(combo_data=='SHA-512'):        
        sha512 = hashlib.sha512(inp_data.encode())
        final = sha512.hexdigest()
        output = Entry(root,width=36)
        output.insert(END, final)
        output.pack(pady=5, padx=20)
        output.configure(background="lightgrey")

button = Button(root,text="Convert",width=30,command=convert)
button.pack() 

def main():
    root.title("Hash Generator")
    root.minsize(width=600,height=300)
    root.maxsize(width=600,height=300)
    root.configure(background="white")

    root.mainloop()

if __name__ == "__main__":
    main()  