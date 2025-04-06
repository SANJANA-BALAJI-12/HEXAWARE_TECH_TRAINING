#SUM OF NUMBERS FROM M TO N (USING WHILE)

m = int(input("Enter the value of m: "))
n = int(input("Enter the value of n: "))

total_sum = 0

while m <= n:
    total_sum += m
    m += 1

print("Sum of numbers from m to n:", total_sum)
