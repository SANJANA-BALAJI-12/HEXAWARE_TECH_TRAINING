#a function that returns two results

def sum_sub_mul(num1,num2):
    s1=num1+num2
    s2=num1-num2
    s3=num1*num2
    return s1,s2,s3

#end of the function

#get the results from sum_sub()
x,y,z=sum_sub_mul(10,5)
#display the results
print('Result of the addition is',x)
print('Result of the Substraction is',y)
print('Result of the Multiplication is',z)

