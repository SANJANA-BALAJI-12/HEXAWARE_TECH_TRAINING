#Class variables or static variables
class Sample:
    x=10

    #This is a class method
    @classmethod
    def modify(cls):
        cls.x+=1
#-----------------------------
#Creation of instance
s1 = Sample()
s2 = Sample()
print('x in S1=',s1.x)
print('x in S2=',s2.x)

#Modify x in s1
s1.modify()
print('x in s1=',s1.x)
print('y in s2=',s2.x)

