#Example of multi level inheritance
class Person:
    def name(self):
        print("Name")

class Teacher(Person):
    def qualification(self):
        print("Qualification PHd is must")

class HOD(Teacher):
    def expirence(self):
        print("Expertise atleast 15 years")

#-----------------------------
hod = HOD()
hod.name()
hod.qualification()
hod.expirence()