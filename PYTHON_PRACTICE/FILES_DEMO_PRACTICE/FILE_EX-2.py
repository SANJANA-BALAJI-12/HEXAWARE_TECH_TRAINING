#Reading the contents to the file.

f = open('myfile.txt','r')

#Read all the characters from the file.
str=f.read()

#Display the characters
print(str)
#Close the file
f.close()