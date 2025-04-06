#Creating a file and storing the contents into it.
f = open('myfile.txt','w')

#Enter the characters from keyboard
str = input("Enter the Text")

#Write the string into a file
f.write(str)

#Closing the file
f.close()



#So, the program flow is:
#1.Open or create a file for writing.
#2.Take user input.
#3.Save the user input into the file.
#4.Close the file.