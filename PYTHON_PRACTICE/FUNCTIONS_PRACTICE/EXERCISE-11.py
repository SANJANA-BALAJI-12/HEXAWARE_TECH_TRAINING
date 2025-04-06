#num1 is declared outside of the function, so it is global variable and accessible inside all functions.
num1=10

#num2 is defined only within myfunction() and so it is local variable and cannot be accessed outside.
def myfunction():
    num2=30
    print('The values of num1 and num2',num1,num2)

#num3 is defined only within demo() so it is local variable and cannot be accessed outside.
def demo():
    num3=40
    print('The values of num3 is ',num3)
    print('The values of num1 is',num1)

#calling the function
myfunction()
demo()