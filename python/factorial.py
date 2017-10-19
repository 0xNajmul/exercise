def fact(num):
    if num == 1:
        return 1
    elif num == 0:
        return 0
    else:
        return (num*fact(num-1))

num=5
print(fact(num))    