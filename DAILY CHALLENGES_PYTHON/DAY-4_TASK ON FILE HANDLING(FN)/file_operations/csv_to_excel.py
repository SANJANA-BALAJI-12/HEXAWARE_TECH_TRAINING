import csv
from openpyxl import Workbook

def csv_to_excel(csv_file, excel_file):
    try:
        workbook = Workbook()
        sheet = workbook.active

        with open(csv_file, "r") as file:
            reader = csv.reader(file)
            for row in reader:
                sheet.append(row)

        workbook.save(excel_file)
        return "CSV converted to Excel file successfully."
    except Exception as e:
        return f"Error converting CSV to Excel: {e}"
