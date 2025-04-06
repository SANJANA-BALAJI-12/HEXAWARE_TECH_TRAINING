#usage of reduce() with lambdas

#Imports the functools module, which contains the reduce() function and other useful tools.
from functools import *
lst = [1,2,3,4,5]
result = reduce(lambda x,y:x*y,lst)
print(result)