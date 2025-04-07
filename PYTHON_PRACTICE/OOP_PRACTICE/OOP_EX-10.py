#A program with class employee that keeps track of the number of employees
#in the organization and also stores their name,designation and salary details
class Employee:
    empCount=0
    def __init__(self,name,desig,salary):
        self.name=name
        self.desig=desig
        self.salary=salary
        Employee.empCount+=1
    def displayCount(self):
        print('There are %d employees' % Employee.empCount)
    def displayDetails(self):
        print("Name",self.name,"Designation",self.desig,"Salary",self.salary)

e1 = Employee("Farhan","Manager",100000)
e2 = Employee("Mike","Team Leader",90000)
e3 = Employee("Raghav","Team Leader",80000)
e3.displayCount()
print("Details of the employee is")
e3.displayDetails()