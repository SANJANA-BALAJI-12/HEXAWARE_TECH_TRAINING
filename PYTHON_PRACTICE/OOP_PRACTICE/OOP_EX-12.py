class MyClass(object):
    @classmethod
    def class_1(cls):
        print("Class method 1")

    def class_2(self):
        print("Self/Instance method 1")

print("Calling the class `MyClass` directly without an instance:")
#We can call the class methods directly without an instance.
MyClass.class_1()
#MyClass.class_2()

# NOTE: You will want to comment `MyClass.class_2()` once you hit the `TypeError`
# To continue with the examples below.

print("\nCalling the instance `MyClass()`:")
MyClass().class_1()
MyClass().class_2()