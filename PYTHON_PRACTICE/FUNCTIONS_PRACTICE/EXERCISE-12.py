
#num1 is a global variable
num1 =10

def myfunction():
    #Here num1 is a local variable
    num1 =20

#globals(): This is a built-in function in Python that returns a dictionary of all global variables (their names as keys and their values as values).
#globals()['num1']: This retrieves the value of the global variable num1, which is 10, even though there's a local variable num1 in the function.
    x = globals()['num1']
    print("the value of num1 is" ,num1)
    print("the value of x is" ,x)

myfunction()