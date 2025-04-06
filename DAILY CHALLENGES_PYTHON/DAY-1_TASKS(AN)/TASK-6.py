#FIND AREA OF SHAPES GIVEN:

import math
choice = int(input("Enter your choice (1 - Circle, 2 - Triangle, 3 - Rectangle): "))
match choice:
    case 1:
        radius = float(input("Enter the radius of the circle: "))
        area_circle = math.pi * radius ** 2
        print("area of circle:", area_circle)

    case 2:
        side1 = float(input("Enter the first side of the triangle: "))
        side2 = float(input("Enter the second side of the triangle: "))
        side3 = float(input("Enter the third side of the triangle: "))

        s = (side1 + side2 + side3) / 2
        area_triangle = math.sqrt(s * (s - side1) * (s - side2) * (s - side3))
        print("area of triangle:", area_triangle)

    case 3:
        length = float(input("Enter the length of the rectangle: "))
        width = float(input("Enter the width of the rectangle: "))
        area_rectangle = length * width
        print("area of rectangle:", area_rectangle)

    case _:
        print("invalid choice!")


