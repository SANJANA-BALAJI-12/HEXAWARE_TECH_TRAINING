import json

with open('person.json','r') as f:
    data = json.load(f)

print(data)

#Program flow
#Import the JSON module: The json library is used to work with JSON data.
#Open the JSON file: Using with open()
#Load the JSON content: The json.load() method parses the content of the file into a Python dictionary (data).
#Display the data