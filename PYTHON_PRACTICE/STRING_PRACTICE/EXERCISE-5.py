"""
A python program that reads the line and prints like:
      number of uppercase letters
      number of lowercase letters
      number of alphabets
      number of digits
      number of symbols

"""
line = input("Enter the line")
lowercount=uppercount=0
digitcount=alphacount=symcount=0

for a in line:
    if a.islower():
        lowercount+=1
    elif a.isupper():
        uppercount+=1
    elif a.isdigit():
        digitcount+=1
    elif a.isalpha():
        alphacount+=1
    elif a.isalnum() != True and a!= ' ':
        symcount+=1

print('Number of Uppercase letters are',uppercount)
print('Number of Lowercase letters are',lowercount)
print('Number of alphabets',alphacount)
print('Number of digits',digitcount)
print('Number of Symbols',symcount)


