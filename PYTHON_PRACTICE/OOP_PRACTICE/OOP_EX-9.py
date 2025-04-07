class SampleCls:
    def __init__(self,var):
        self.__var = var
    #A private method
    def __display(self):
        print('From the method the value is',self.__var)

#Create an object
obj = SampleCls(10)
#Accessing a private method
obj._SampleCls__display()
