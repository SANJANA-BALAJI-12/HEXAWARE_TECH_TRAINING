#TASK-6: MEMORY LOCATION:

a = input("Enter first value: ")
b = input("Enter second value: ")

print("Memory location of a:", id(a))
print("Memory location of b:", id(b))
print("Same memory location:", a is b)
