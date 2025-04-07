#Instance method to process data of objects
class Student:
    #A constructor defined
    def __init__(self,n='',m=0):
        self.name=n
        self.marks=m
    #This is an instance method
    def display(self):
        print('Hello,',self.name)
        print('Your marks are',self.marks)

    #To calculate grades based on marks
    def calculate(self):
        if (self.marks>=600):
            print('You got first grade')
        elif(self.marks>=500):
            print('You got second grade')
        elif(self.marks>=350):
            print('You got third grade')
        else:
            print('You are failed')
#------------------------------------------------------

#Accepting values dynamically
n = int(input("How many student?"))

i=0
while(i<n):
    name=input("Enter the name")
    marks= int(input('Enter the Marks'))

    #Create a Student class instance and store the data
    s= Student(name,marks)
    s.display()
    s.calculate()
    i+=1
    print('-------------------')