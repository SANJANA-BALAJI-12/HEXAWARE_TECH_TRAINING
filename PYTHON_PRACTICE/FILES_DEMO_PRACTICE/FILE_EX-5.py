#A program to append the contents of the file.

f = open('myfile.txt','a+')

print('Enter the text to append @ at the end')

while str!= '@':
    str=input()

    #Write the string into the file.
    if(str!='@'):
        f.write(str + "\n")
#Put the file pointer to the beginning of the file
f.seek(0,0)
#Read the strings from the file
print('The file contents are:')
str = f.read()
print(str)

#Closing the file
f.close()