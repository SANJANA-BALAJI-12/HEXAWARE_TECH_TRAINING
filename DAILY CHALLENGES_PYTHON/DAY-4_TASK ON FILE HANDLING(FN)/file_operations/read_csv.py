import csv

def read_csv_file(file_path):
    try:
        with open(file_path, "r") as file:
            reader = csv.reader(file)
            return [row for row in reader]
    except Exception as e:
        return f"Error reading CSV file: {e}"
