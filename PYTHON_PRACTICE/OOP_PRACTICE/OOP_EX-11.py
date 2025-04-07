#Example of instance method
class InstanceCounter(object):
    count = 0
    #Parameterized constructor
    def __init__(self, val):
        self.val = val
        InstanceCounter.count += 1
    #Mutator method
    def set_val(self, newval):
        self.val = newval
    #Accessor method
    def get_val(self):
        return self.val

    def get_count(self):
        return InstanceCounter.count
#End of the class

#Creation of object
a = InstanceCounter(5)
b = InstanceCounter(10)
c = InstanceCounter(15)

for obj in (a, b, c):
    print("Value of object: %s" % (obj.get_val))
    print("Count : %s " % (obj.get_count))

