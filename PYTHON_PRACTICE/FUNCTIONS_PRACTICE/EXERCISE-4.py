#a function to calculate factorial value
def fact(n):
    prod=1
    while n>=1:
        prod*=n
        n-=1
    return prod

#end of function fact
#display the factorial of first 10 numbers
for i in range(1,11):
    print('Factorial of {} is {}'.format(i,fact(i)))





















