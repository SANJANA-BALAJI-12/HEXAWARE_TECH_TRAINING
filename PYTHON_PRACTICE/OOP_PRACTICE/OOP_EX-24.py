#Abstract class example
from abc import ABC,abstractmethod
class MyClass(ABC):
    @abstractmethod
    def calculate(self,x):
        pass

class Sub1(MyClass):
    def calculate(self,x):
        print("Square Value=",x*x)

#This is an other sub class for MyClass
import math
class Sub2(MyClass):
    def calculate(self,x):
        print("Square Root of the number=",math.sqrt(x))

class Sub3(MyClass):
    def calculate(self,x):
        print("Cube Value=",x**3)

#Create a subclass object and call calculate() method
obj1=Sub1()
obj1.calculate(16)

#Create a subclass sub2 and call calculate method
obj2 = Sub2()
obj2.calculate(16)

#Create a subclass object for calculate method
obj3= Sub3()
obj3.calculate(16)
