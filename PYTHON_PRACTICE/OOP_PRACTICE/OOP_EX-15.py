#Example on encapsulation
class MyInteger(object):
    def set_val(self, val):
        try:
            __val = int(val)
        except ValueError:
            return
        self.val = val

    def get_val(self):
        print(self.val)

    def increment_val(self):
        self.val = self.val + 1
        print(self.val)


a = MyInteger()
a.set_val(10)
a.get_val()
a.increment_val()
print("\n")

# Trying to break encapsulation in a new instance with an int
c = MyInteger()
c.val = 15
c.get_val()
c.increment_val()
print("\n")