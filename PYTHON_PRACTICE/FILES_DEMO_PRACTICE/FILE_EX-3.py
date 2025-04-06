#Writing the multiple contents into the file.
f = open('myfile1.txt','w')

#Enter the strings from the keyboard
print('Enter text @ at the end:')
while str!='@':
    str=input()
    #Write the string into a file.
    if(str != '@'):
        f.write(str + "\n")
f.close()
#After this code get excuted the myfile1.txt could be created.