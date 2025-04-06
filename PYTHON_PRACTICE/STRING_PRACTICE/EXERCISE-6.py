from datetime import *
#usage of f-string
val = 'Python'
print(f"{val}  is very good to learn and a wonderful {val} language")

name='Gopinath'
age=21
print(f"Hello, My Name is {name} and Im {age} years Old")

today= datetime.today()
print(f"{today:%B %d, %Y}")


english=80
maths=99
hindi=90
print(f"Ram got total marks {english + maths + hindi} out of 300")

names={'Id': 100, 'Name' : 'Javeed'}
print(f"Id of {names['Name']} is {names['Id']}")