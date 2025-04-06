#keyword variable arguments

#**kwargs: Represents keyword variable arguments, allowing the function to accept any number of additional keyword arguments (i.e., key-value pairs).
#The ** operator collects these keyword arguments into a dictionary, making them flexible and dynamic.

def display(farg,**kwargs):
    print("Formal Argments are",farg)
    for x,y in kwargs.items():
        print('key = {},value={}'.format(x,y))

#end of the function

display(5,rollno=10)
print()
display(10,rollno=20,name='Prakash')