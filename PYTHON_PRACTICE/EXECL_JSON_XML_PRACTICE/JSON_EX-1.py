import json

#Firstly we have created a dictionary
person= '{' \
        '"name" : "Arivindan", ' \
        '"languages" : ["English","Tamil"]' \
        '}'

#After creating a dictionary we have converted it into json format
person_dict = json.loads(person)

#Displayed the json content.
print(person_dict)
print(person_dict['languages'])


#Program Flow
#1.Create a JSON string:
        #Define the person variable containing a JSON-like string with keys (name, languages) and their respective values.
#2.Convert to a Python dictionary:
        #Use json.loads() to convert the JSON string (person) into a Python dictionary (person_dict).
#3.Access and display the data:
        #Print the entire dictionary using print(person_dict).
        #Print the languages list specifically using print(person_dict['languages'])