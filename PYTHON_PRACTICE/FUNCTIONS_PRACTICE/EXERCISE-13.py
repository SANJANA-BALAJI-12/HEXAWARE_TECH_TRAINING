#Recursive function- maens "Self-calling"
def factorial(n):
    #base function
    if n==0:
        result=1

    #recursive function
    else:
        result=n*factorial(n-1)
    return result

#end of the function

#find the factorial value
for i in range(1,6):
    print('Factorial of {} is {}'.format(i,factorial(i)))