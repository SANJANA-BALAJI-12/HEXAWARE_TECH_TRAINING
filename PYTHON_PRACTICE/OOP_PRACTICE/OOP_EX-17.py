#Usage of multiple inheritance

class Base1(object):
    def __init__(self):
        super(Base1,self).__init__()
        print('Base 1 class')
class Base2(object):
    def __init__(self):
        super(Base2,self).__init__()
        print("Base 2 Class")

class Derived(Base1,Base2):
    def __init__(self):
        super(Derived,self).__init__()
        print("Derived Class")
#Creation of instance to the derived class
D= Derived()