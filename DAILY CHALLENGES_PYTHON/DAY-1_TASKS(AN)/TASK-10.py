#TO CHECK GIVEN NUM IS PALINDROME

number = input("Enter a number: ")
rev = ""
for digit in number:
    rev = digit + rev

if number == rev:
    print("Palindrome")
else:
    print("Not a palindrome")