# Importing element tree
import xml.etree.ElementTree as ET

# Pass the path of the xml document
tree = ET.parse('models.xml')

# Get the parent tag
root = tree.getroot()

# Print the root (parent) tag along with its memory location
print(root)

# Print the attributes of the first tag
print(root[0].attrib)

# print the text contained within first subtag of the 5th tag from the parent
#print(root[5][0].text)