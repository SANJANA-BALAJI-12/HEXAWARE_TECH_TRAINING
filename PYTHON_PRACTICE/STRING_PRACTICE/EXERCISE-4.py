#string handling functions.
str1 = "abc123"
str2 = "hello"
str3 = '12345'
str4 = ' '

#isalnum()- Checks if all characters in the string are alphanumeric (letters or digits) and returns True or False.
print(str1.isalnum())
print(str2.isalnum())
print(str3.isalnum())
print(str4.isalnum())

#isaplha()- Checks if all characters in the string are alphabetic (letters only).
print(str1.isalpha())
print(str3.isdigit())

#lower()- Converts all uppercase letters in the string to lowercase.
str6='PYTHON PROGRAMMING'
print(str6.lower())

#upper()- Converts all lowercase letters in the string to uppercase.
str7 = 'python programming'
print(str7.upper())

#lstrip()- Removes leading spaces (spaces before the text) from the string.
str8= '          python programming'
print(str8)
print(str8.lstrip())

#rstrip()- Removes trailing spaces (spaces after the text) from the string.
str9= 'python programming        '
print(str9)
print(str9.rstrip())

#startswith(substring)- Checks if the string starts with the given substring.
#endswith(substring)- Checks if the string ends with the given substring.
str10='python programming'
print(str10.startswith('py'))
print(str10.endswith('ing'))

#replace()- Replaces occurrences of a substring with another substring.
str11='python programming'
print(str11.replace('python','java'))

#join()- Joins elements of a sequence (e.g., characters) using the specified.
str12= "*".join("Python")
print(str12)

#split()- Splits the string into a list of words based on spaces (default separator).
str13= "Python World".split()
print(str13)