# PALINDROME CHECK PROGRAM


string = str(input("Enter a string: "))

string = string.lower()

if string == string[::-1]:
    print(string, "is a palindrome.")
else:
    print(string, "is not a palindrome.")
