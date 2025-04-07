import abc

class GetSetParent(object):
    #A variable called __metaclass__ is created and Abc meta class is associated to it.
    __metaclass__ = abc.ABC
    #parameterized contructor
    def __init__(self,value):
        self.val=0
    def set_val(self,value):
        self.val = value
    def get_val(self):
        return self.val

    @abc.abstractmethod
    def showdoc(self):
        return

class GetSetList(GetSetParent):
    def __init__(self, value=0):
        self.vallist = [value]

    def get_val(self):
        return self.vallist[-1]

    def get_vals(self):
        return self.vallist

    def set_val(self, value):
        self.vallist.append(value)
    #Giving the body for the abstract method
    def showdoc(self):
        print(
            "GetSetList object, len {0}, store history of values set".format(
                len(self.vallist)
            )
        )

obj1=GetSetList(100)
obj1.showdoc()

