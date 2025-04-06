#Example of ioerror
try:
    name=input("Enter the Filename")
    f=open(name,'r')
except IOError:
    print("File is not found",name)
else:
    n=len(f.readlines())
    print(name,"has",n,"lines")
    f.close()
