from xml.dom import minidom

#Parse an xml file by name
file= minidom.parse('models.xml')
#Use getElementByTagName to get the data
models = file.getElementsByTagName('model')

# One specific item attribute
print('model #2 attribute:')
print(models[1].attributes['name'].value)

# All item attributes
print('\nAll attributes:')
for elem in models:
  print(elem.attributes['name'].value)

# One specific item's data
print('\nmodel #2 data:')
print(models[1].firstChild.data)
print(models[1].childNodes[0].data)

