"""
#Copying the image into a file.
#Binary read mode ('rb').
#Binary write mode ('wb').
f1 = open('electronics.jpg','rb')
f2 = open('newfile.jpg','wb')

#Read the bytes from f1 and write into f2
bytes = f1.read()
f2.write(bytes)

#Close the file.
f1.close()
f2.close()

#After this code get excuted the newfile.jpg could be created by reading from the original file called electronics.jpg
"""

#-------METHOD-2--------------------
#Copying the image into a file.
#Binary read mode ('rb').
#Binary write mode ('wb').
f1 = open('india.PNG','rb')
f2 = open('newfile1.PNG','wb')

#Read the bytes from f1 and write into f2
bytes = f1.read()
f2.write(bytes)

#After this code get excuted the newfile1.PNG could be created by reading from the original file called india.PNG.

#Close the file.
f1.close()
f2.close()
