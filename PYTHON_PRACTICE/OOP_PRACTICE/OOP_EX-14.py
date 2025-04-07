#Create a class named Emp and make all the members of the class avaiable to an other class.
class Emp:
    def __init__(self,id,name,salary):
        self.id=id
        self.name=name
        self.salary=salary
    #This is an instance method
    def display(self):
        print("Id=",self.id)
        print("Name=",self.name)
        print("Salary=",self.salary)

#This class display employee details.
class MyClass:
    @staticmethod
    def mymethod(e):
        e.salary+=1000;
        e.display()
#Create an object form Emp Class
e = Emp(10,'Raj Kumar',15000.75)
#Call the static method
MyClass.mymethod(e)