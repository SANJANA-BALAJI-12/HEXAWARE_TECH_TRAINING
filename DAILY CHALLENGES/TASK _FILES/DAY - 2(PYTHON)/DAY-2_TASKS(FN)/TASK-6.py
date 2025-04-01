#SUM OF EVEN AND ODD NUMBERS

even = 0
odd = 0

for i in range(10):
    num = int(input("Enter number: "))
    if num % 2 == 0:
        even += num
    else:
        pass
        odd += num

print("Sum of even numbers:", even)
print("Sum of odd numbers:", odd)
