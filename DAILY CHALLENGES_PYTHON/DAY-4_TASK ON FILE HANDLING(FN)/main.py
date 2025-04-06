from file_operations import read_text_file, read_excel_file, read_csv_file
from file_operations import create_json, json_to_text, csv_to_excel

if __name__ == "__main__":
    # Test reading text files
    print(read_text_file("test.txt"))

    # Test reading Excel files
    print(read_excel_file("test.xlsx"))

    # Test reading CSV files
    print(read_csv_file("test.csv"))

    # Test JSON operations
    data = {"Name": "Sanjana", "Age": 25, "Skills": ["Python", "SQL", "JSON"]}
    print(create_json("data.json", data))
    print(json_to_text("data.json", "data.txt"))

    # Test CSV to Excel conversion
    print(csv_to_excel("test.csv", "test.xlsx"))
