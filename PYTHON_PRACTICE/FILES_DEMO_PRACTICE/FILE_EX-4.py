f = open('myfile1.txt','r')

#Read the string for the file.
print('The File contents are:')
str = f.read()
print(str)

#Closing the file.
f.close()
