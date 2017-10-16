# example 1

def unp(*args):
    total = 0
    for i in args:
        total+=i
    print("Total Number is : ",total)

unp(10,20,30,40,50)

# example 2

def unp2(*args):
    total =0
    for i in args:
        total+=i
    print("Total Number is : ",total)

numbers=[10,20,30,40,50]
unp2(*numbers)