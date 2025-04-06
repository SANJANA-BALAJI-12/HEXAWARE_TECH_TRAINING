f = open('myfile',"w")

#Do some processing on the file
a,b = [int(x) for x in input("Enter the two numbers").split()]
c=a/b
f.write("Writing %d into my file" %c)

#Close the file
f.close()
print('File Closed')