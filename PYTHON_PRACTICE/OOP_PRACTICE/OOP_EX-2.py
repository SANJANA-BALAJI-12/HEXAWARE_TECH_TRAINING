#Example of parameterized constructor
class Student:
    #Parameterized constructor
    def __init__(self,n=' ',m=0):
        self.name=n
        self.marks=m

    #Instance method
    def display(self):
        print('Hello the name of the Student is',self.name)
        print('The marks obtained are',self.marks)

#Creation of object
s= Student('Lakshmi',990)
s.display()
print('-------------')




