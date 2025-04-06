#write a python program that asks user for a username and pcode. Make sure that
#pcode does not contain username and matches 'Trident111'

uname=input('Enter the username')
pcode=input('Enter the PassCode')

if uname not in pcode and pcode=='Trident111':
    print("Your Code is valid to proceed")
else:
    print('Your code is not valid')