#How to handle exceptions and display an error message

try:
    b= float(100+50/0)
except Exception as Argument:
    print("This is an argument",Argument)