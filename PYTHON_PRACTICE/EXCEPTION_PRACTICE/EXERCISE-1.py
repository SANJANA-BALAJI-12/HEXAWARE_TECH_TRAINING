#An exception handling example
try:
    f = open("myfile.txt","w")
    a,b = [int(x) for x in input("Enter the two numbers").split()]
    c=a/b
    f.write("Writing %d into myfile.txt" %c)
except ZeroDivisionError:
    print("Division by zero happened")
    print("Do not enter zer value in the input")
finally:
    f.close()
    print('File is closed')

