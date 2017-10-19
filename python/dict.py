# example 1
a={1:'najmul','amin':2}
print(a)
print(type(a))
print(a[1])
print(a['amin'])

# example 2
b={
    "name":"najmul",
    "age":"twenty two",
    "city":"Dhaka"
}
print(b)
print(b['age'])
print(b['name'])


# example 3
dictionary = { "some_key": "some_value" }

for key in dictionary:
    print("%s --> %s" %(key, dictionary[key]))
# some_key --> some_value   


# example 4
dictionary_tk = {
  "name": "Leandro",
  "nickname": "Tk",
  "nationality": "Brazilian",
  "age": 24
}

for attribute, value in dictionary_tk.items():
    print("My %s is %s" %(attribute, value))
    
# My name is Leandro
# My nickname is Tk
# My nationality is Brazilian
# My age is 24