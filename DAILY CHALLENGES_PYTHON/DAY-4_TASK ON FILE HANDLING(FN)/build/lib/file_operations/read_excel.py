import openpyxl

def read_excel_file(file_path):
    try:
        workbook = openpyxl.load_workbook(file_path)
        sheet = workbook.active
        data = []
        for row in sheet.iter_rows(values_only=True):
            data.append(row)
        return data
    except Exception as e:
        return f"Error reading Excel file: {e}"
