#Overloading of + operator to act on objects
class BookX:
    def __init__(self,pages):
        self.pages=pages

    def __add__(self, other):
        return self.pages+other.pages

class BookY:
    def __init__(self,pages):
        self.pages=pages

b1 = BookX(100)
b2 = BookY(200)
print('Total Pages =',b1+b2)