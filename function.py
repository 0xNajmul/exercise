# example 1
def func(prm):
    print("My name is "+prm+" Amin")
func("Najmul")

# example 2 print Second name
def greets(*name):
    print("hello ",name[1])
greets("Najmul","Mamun","Tuhin")

# example 3 for loop with name
def greet(*names):
    for name in names:
        print("hello",name)
greet("Najmul","Tuhin","Mamun")