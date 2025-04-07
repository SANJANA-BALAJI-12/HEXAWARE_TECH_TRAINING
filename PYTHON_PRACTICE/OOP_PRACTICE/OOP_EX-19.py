class Student:
    def name(self):
        print('Name....')

class Acedemic_Performance(Student):
    def Acad_score(self):
        print("Academic Score...90% and above")

class ECA(Student):
    def ECA_score(self):
        print("ECA Score....60% and above")

class Result(Acedemic_Performance,ECA):
    def Eligibility(self):
        print("Minimum Eligibility to apply")
        self.Acad_score()
        self.ECA_score()

R = Result
R.Eligibility()