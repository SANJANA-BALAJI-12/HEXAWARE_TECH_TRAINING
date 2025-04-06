import csv

# Define the data
data = [
    ["Name", "Age", "Skills"],
    ["Sanjana", 25, "Python;SQL"],
    ["Arjun", 30, "Java;HTML"],
    ["Meera", 28, "C++;Excel"]
]

# Write the data to a CSV file
with open("test.csv", "w", newline="") as file:
    writer = csv.writer(file)
    writer.writerows(data)

print("CSV file created successfully!")
