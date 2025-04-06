#function with return values
#return: Sends the value stored in res (the result of the addition) back to the caller.

def sum(num1,num2):
    res = num1+num2
    return res
#end of the function sum

#call the function
x = sum(100,200)
print("The Sum of two numbers are",x)
y = sum(10.23,45.34)
print("The sum of two numbers are",round(y,2))
