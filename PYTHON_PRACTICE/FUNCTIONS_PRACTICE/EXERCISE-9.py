#an example of variable length operators

#This is a variable-length argument.
#The * operator allows the function to accept multiple arguments for fav_subjects, even if the number of arguments varies each time the function is called.

def myFunction(name,*fav_subjects):
    print()
    print(name,"likes to read")
    for subject in fav_subjects:
        print(subject)
#end of the function

myFunction("Rajiv","C","C++","Java")
myFunction("Srujan","Python")
myFunction("Lakshman","Mathematics","Java","Python","C")