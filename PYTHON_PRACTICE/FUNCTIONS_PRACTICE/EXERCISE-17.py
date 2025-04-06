#usage of map function

def squares(x):
    return x*x

#let us take list of numbers
lst=[1,2,3,4,5]

#call the map function with squares() and lst
lst1 = list(map(squares,lst))
print(lst1)


"""
lst = [1,2,3,4,5]
lst1 = list(map(lambda x:x*x,lst))
print(lst1)
"""