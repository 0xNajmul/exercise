import Tkinter
#import tkMessageBox

operatorFlag = plusFlag = minusFlag = multiplyFlag = divideFlag = isFloat = 0
n1 = n2 = res = 0.0
floatPos = 10.0
###################################################################

def display(value):
    display = Tkinter.Label(top, text = value, height=3)
    display.grid(row=0)

def num1(x):
    global n1, floatPos, isFloat

    if(isFloat == 0):
        n1 = 10*n1 + x
    else:
        n1 = n1 + x/floatPos
        floatPos = floatPos * 10
    display(n1)

def num2(x):
    global n2, floatPos, isFloat

    if(isFloat == 0):
        n2 = 10*n2 + x
    else:
        n2 = n2 + x/floatPos
        floatPos = floatPos * 10
    display(n2)
###################################################################

top = Tkinter.Tk()

def equal():
    global plusFlag, minusFlag, multiplyFlag, divideFlag, res, n1, n2, operatorFlag, isFloat, floatPos

    if(plusFlag == 1):
        res = n1 + n2

    if(minusFlag == 1):
        res = n1 - n2

    if(multiplyFlag == 1):
        res = n1 * n2
    if(divideFlag == 1):
        res = n1 / n2

    display(res)
    operatorFlag = plusFlag = minusFlag = multiplyFlag = divideFlag = isFloat = 0
    n1 = n2 = res = 0.0
    floatPos = 10.0
###################################################################

def ac():
    operatorFlag = plusFlag = minusFlag = multiplyFlag = divideFlag = isFloat = 0
    n1 = n2 = res = 0.0
    floatPos = 10.0
    display(res)

def plus():
    global operatorFlag, plusFlag, minusFlag, multiplyFlag, divideFlag, isFloat, floatPos

    operatorFlag = plusFlag = 1
    isFloat = minusFlag = multiplyFlag = divideFlag = 0
    floatPos = 10.0

def minus():
    global operatorFlag, plusFlag, minusFlag, multiplyFlag, divideFlag, isFloat, floatPos

    operatorFlag = minusFlag = 1
    isFloat = plusFlag = multiplyFlag = divideFlag = 0
    floatPos = 10.0

def multiply():
    global operatorFlag, plusFlag, minusFlag, multiplyFlag, divideFlag, isFloat, floatPos

    operatorFlag = multiplyFlag = 1
    isFloat = plusFlag = minusFlag = divideFlag = 0
    floatPos = 10.0

def divide():
    global operatorFlag, plusFlag, minusFlag, multiplyFlag, divideFlag, isFloat, floatPos

    operatorFlag = divideFlag = 1
    isFloat = plusFlag = minusFlag = multiplyFlag = 0
    floatPos = 10.0
###################################################################

def Float():
    global isFloat
    isFloat = 1

def button0():
    global operatorFlag
    if(operatorFlag == 0):
        num1(0)
    else:
        num2(0)

def button1():
    global operatorFlag
    if(operatorFlag == 0):
        num1(1)
    else:
        num2(1)

def button2():
    global operatorFlag
    if(operatorFlag == 0):
        num1(2)
    else:
        num2(2)

def button3():
    global operatorFlag
    if(operatorFlag == 0):
        num1(3)
    else:
        num2(3)

def button4():
    global operatorFlag
    if(operatorFlag == 0):
        num1(4)
    else:
        num2(4)

def button5():
    global operatorFlag
    if(operatorFlag == 0):
        num1(5)
    else:
        num2(5)

def button6():
    global operatorFlag
    if(operatorFlag == 0):
        num1(6)
    else:
        num2(6)

def button7():
    global operatorFlag
    if(operatorFlag == 0):
        num1(7)
    else:
        num2(7)

def button8():
    global operatorFlag
    if(operatorFlag == 0):
        num1(8)
    else:
        num2(8)

def button9():
    global operatorFlag
    if(operatorFlag == 0):
        num1(9)
    else:
        num2(9)
###################################################################

B1 = Tkinter.Button(top, text = "1", width=10, height=2, command = button1)
B1.grid(row=1)
B2 = Tkinter.Button(top, text = "2", width=10, height=2, command = button2)
B2.grid(row=1, column=1)
B3 = Tkinter.Button(top, text = "3", width=10, height=2, command = button3)
B3.grid(row=1, column=2)
B4 = Tkinter.Button(top, text = "4", width=10, height=2, command = button4)
B4.grid(row=2)
B5 = Tkinter.Button(top, text = "5", width=10, height=2, command = button5)
B5.grid(row=2, column=1)
B6 = Tkinter.Button(top, text = "6", width=10, height=2, command = button6)
B6.grid(row=2, column=2)
B7 = Tkinter.Button(top, text = "7", width=10, height=2, command = button7)
B7.grid(row=3)
B8 = Tkinter.Button(top, text = "8", width=10, height=2, command = button8)
B8.grid(row=3, column=1)
B9 = Tkinter.Button(top, text = "9", width=10, height=2, command = button9)
B9.grid(row=3, column=2)
B0 = Tkinter.Button(top, text = "0", width=10, height=2, command = button0)
B0.grid(row=4)
B_float = Tkinter.Button(top, text = ".", width=10, height=2, command = Float)
B_float.grid(row=4, column=2)
###################################################################

B_space = Tkinter.Label(top, width=10, height=2)
B_space.grid(row=1, column=3)
B_space = Tkinter.Label(top, width=10, height=2)
B_space.grid(row=2, column=3)
B_space = Tkinter.Label(top, width=10, height=2)
B_space.grid(row=3, column=3)
B_space = Tkinter.Label(top, width=10, height=2)
B_space.grid(row=4, column=3)
###################################################################

B_plus = Tkinter.Button(top, text = "+", width=10, height=2, command = plus)
B_plus.grid(row=2, column=4)
B_minus = Tkinter.Button(top, text = "-", width=10, height=2, command = minus)
B_minus.grid(row=2, column=5)
B_multiply = Tkinter.Button(top, text = "*", width=10, height=2, command = multiply)
B_multiply.grid(row=3, column=4)
B_divide = Tkinter.Button(top, text = "/", width=10, height=2, command = divide)
B_divide.grid(row=3, column=5)
B_equal = Tkinter.Button(top, text = "=", width=10, height=2, command = equal)
B_equal.grid(row=4, column=4)

B_clear = Tkinter.Button(top, text = "AC", width=10, height=2, command = ac)
B_clear.grid(row=1, column=4)
B_clear = Tkinter.Button(top, text = "OFF", width=10, height=2, command = top.destroy)
B_clear.grid(row=1, column=5)

top.mainloop()