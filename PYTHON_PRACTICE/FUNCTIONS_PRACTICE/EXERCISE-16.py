#usage of filter with lambdas

def is_even(x):
    if x%2==0:
        return True
    else:
        return False
#let us tale a list of numbers
lst=[10,12,15,23,45,46,70,99,100,]

#use the filter function to iseven()
lst1=list(filter(is_even,lst))
print("List of even numbers:",lst1)

"""
lst=[10,23,45,46,70,99]
lst1=list(filter(lambda x: (x%2==0),lst))
print(lst1)
"""