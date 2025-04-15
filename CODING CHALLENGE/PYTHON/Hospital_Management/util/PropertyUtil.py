import os

class PropertyUtil:

    @staticmethod
    def get_property_string():
        props = {}

        # Update file path to match your package structure
        file_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'db_config'))

        try:
            # Read the key-value pairs directly from the file
            with open(file_path, 'r', encoding='utf-8') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#'):  # Ignore empty lines and comments
                        key, value = line.split('=')
                        props[key.strip()] = value.strip()
        except Exception as e:
            print("Error reading configuration file:", e)

        # Construct the connection string dynamically
        conn_str = (
            f"DRIVER={{{props.get('driver')}}};"
            f"SERVER={props.get('server')};"
            f"DATABASE={props.get('database')};"
            f"Trusted_Connection={props.get('trusted_connection')};"
        )
        return conn_str
