#Count the lines,words and characters in the file.
import os,sys

#Open the file for reading
fname=input("Enter the filename")

if os.path.isfile(fname):
    f = open(fname,'r')
else:
    print(fname ,'does not exists')
    sys.exit()

#Intialize the counters to 0
#Counters for lines (cl), words (cw), and characters (cc) are initialized to zero.
cl=cw=cc=0

#Read line by line from the file.
for line in f:
    words = line.split()
    cl+=1
    cw+=len(words)
    cc+=len(line)

print('Number of lines',cl)
print('Number of Words',cw)
print('Number of Characters',cc)

#Close the file
f.close()
