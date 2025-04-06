#Write a python program to convert json to string
import json

person_dict ={
    'name' : 'James',
    'age' : 15,
    'children' : None
}

#Dump the above json format into python file.
person_json = json.dumps(person_dict)
print(person_json)