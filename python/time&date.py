import time
import calendar

# getting current time
localtime = time.asctime( time.localtime(time.time()) )
print("todays time : ",localtime)


# calender
cal = calendar.month(2017,10)
print(cal)

print(time.clock())
