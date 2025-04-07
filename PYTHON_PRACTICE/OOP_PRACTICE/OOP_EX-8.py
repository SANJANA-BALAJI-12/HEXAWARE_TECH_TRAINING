#Accessor methods and mutator methods
class Student:
    #Mutator method
    def setName(self,name):
        self.name=name
    #Accessor method
    def getName(self):
        return self.name
    #Mutator method
    def setMarks(self,marks):
        self.marks=marks
    #Accessor method
    def getMarks(self):
        return self.marks
#--------------------------------------
n=int(input('How many students?'))

i=0
while(i<n):
    #Create a student class instance
    s= Student()
    name=input('Enter the name')
    s.setName(name)
    marks=int(input("Enter the marks"))
    s.setMarks(marks)

    #Retrive data from student class
    print('Hello',s.getName())
    print('Your marks are',s.getMarks())

    i+=1
    print('-------------------')