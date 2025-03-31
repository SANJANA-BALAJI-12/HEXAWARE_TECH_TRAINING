# ARMSTRONG NUMBER

num = int(input("Enter a number: "))
sum_of_powers = 0

temp_num = num

while temp_num > 0:
    digit = temp_num % 10
    sum_of_powers += digit ** 3
    temp_num //= 10


if sum_of_powers == num:
    print("Armstrong number")
else:
    print("Not an Armstrong number")
