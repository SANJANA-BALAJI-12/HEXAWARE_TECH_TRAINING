class Rectangle:
    def __init__(self, length, breadth):
        self.__length = length
        self.__breadth = breadth

    def area(self):
        return self.__length * self.__breadth

# Create a Rectangle object
rect = Rectangle(5, 3)
print(f"Area of rectangle: {rect.area()}")
