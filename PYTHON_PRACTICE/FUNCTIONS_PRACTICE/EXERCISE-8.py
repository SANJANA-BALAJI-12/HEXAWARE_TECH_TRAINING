#example of default arguments

def display(name="Sanjana",course="python"):
    print("The name of the student",name)
    print('The Course opted for is',course)

#end of the function

#Default arguments allow you to assign a default value to a function parameter.
# If the caller does not provide a value for that parameter, the function will automatically use the default value.
display(course='Java')
display(name='Radha')
