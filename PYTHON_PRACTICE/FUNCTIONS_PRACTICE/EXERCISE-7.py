#usage of keyword arguments

def display(str,int_x,float_y):
    print('The string is',str)
    print('The integer value is',int_x)
    print('The floating point value is',float_y)
#end of the function

#arguments can be passed in any order while we use parameter names like float_y,int_x,str....
display(float_y=45.34,str="Python",int_x=45)
