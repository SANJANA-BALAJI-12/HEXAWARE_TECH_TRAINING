#TASK-3: AREA OF CYLINDER:

import math

radius = float(input("Enter the radius of the cylinder: "))
height = float(input("Enter the height of the cylinder: "))

area = 2 * math.pi * radius * (height + radius)
print("Surface area of the cylinder:", area)