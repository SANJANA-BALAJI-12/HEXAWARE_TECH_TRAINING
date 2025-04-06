from openpyxl import Workbook

workbook = Workbook()
sheet = workbook.active

data = [
    ["Name", "Age", "Skills"],
    ["Sanjana", 25, "Python, SQL"],
    ["Arjun", 30, "Java, HTML"],
    ["Meera", 28, "C++, Excel"],
]

for row in data:
    sheet.append(row)

workbook.save("test.xlsx")
