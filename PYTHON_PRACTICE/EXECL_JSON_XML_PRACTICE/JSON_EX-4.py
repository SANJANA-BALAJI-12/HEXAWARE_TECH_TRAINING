#Writing the json file to text file.

import json
#Created a internal json format file
person_dict= {
    "name" : "Ganesh",
    "languages" : ["English","Hindi"],
    "married" : True,
    "age" : 33
}

with open('person.txt','w') as json_file:
    json.dump(person_dict,json_file)
#Display the content
print('Json content copied to the file')
