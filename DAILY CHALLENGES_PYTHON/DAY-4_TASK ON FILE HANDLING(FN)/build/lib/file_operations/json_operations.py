import json

def create_json(file_path, data):
    try:
        with open(file_path, "w") as json_file:
            json.dump(data, json_file, indent=4)
        return "JSON file created successfully."
    except Exception as e:
        return f"Error creating JSON file: {e}"

def json_to_text(json_file, text_file):
    try:
        with open(json_file, "r") as jfile:
            data = json.load(jfile)
        with open(text_file, "w") as tfile:
            tfile.write(str(data))
        return "JSON converted to text file successfully."
    except Exception as e:
        return f"Error converting JSON to text file: {e}"
