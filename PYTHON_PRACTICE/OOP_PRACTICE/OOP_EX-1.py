#Instance variables and Instance methods.
class Student:
    def __init__(self):
        self.name='Ravi'
        self.age=25
        self.marks=990

    #create an instance method
    def display(self):
        print('My Name is',self.name)
        print('My age is',self.age)
        print('My Marks are',self.marks)
#End of the class

#Creation of instance for the class Student
s1 = Student()
s1.display()