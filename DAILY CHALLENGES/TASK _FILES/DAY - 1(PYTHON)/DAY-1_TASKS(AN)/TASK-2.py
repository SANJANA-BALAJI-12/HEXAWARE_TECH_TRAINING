#ROOTS OF QUADRATIC EQUATION:

import math

a = float(input("Enter a: "))
b = float(input("Enter b: "))
c = float(input("Enter c: "))

discriminant = b**2 - 4*a*c

if discriminant > 0:
    root1 = (-b + math.sqrt(discriminant)) / (2*a)
    root2 = (-b - math.sqrt(discriminant)) / (2*a)
    print("Real roots:", root1, root2)
elif discriminant == 0:
    root = -b / (2*a)
    print("Equal roots:", root)
else:
    print("Imaginary roots (No real solution)")





