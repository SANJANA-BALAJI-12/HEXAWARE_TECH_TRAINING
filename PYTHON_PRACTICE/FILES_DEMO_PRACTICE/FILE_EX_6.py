#A python program to check if the file exists and then reading the data

#The os module is used to perform file-related operations like checking if a file exists.
#The sys module is used for system-related tasks, like exiting the program.
import os,sys

#Open the file for reading the data
fname= input('Enter the filename')

if os.path.isfile(fname):
    f=open(fname,'r')
else:
    print(fname,'does not exist')
    sys.exit()

#Read the strings from the file.
print('The file contents are')
str=f.read()
print(str)
#Closing the file
f.close()