#How to deliberately raise an exception and handle it using a generic except block.
try:
    num = 10
    print(num)
    raise ValueError
except:
    print("Exception occured... Program Terminating")
