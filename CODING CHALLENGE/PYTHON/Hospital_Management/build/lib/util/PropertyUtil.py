class PropertyUtil:
    @staticmethod
    def getPropertyString(property_file_name):
        try:
            with open(property_file_name, "r") as file:
                properties = {}
                for line in file:
                    # Ignore empty lines and lines without "="
                    if "=" not in line.strip():
                        continue
                    # Split the line into key and value
                    key, value = line.strip().split("=", 1)
                    properties[key.strip()] = value.strip()

            # Construct the connection string for SQL Server
            connection_string = f"DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={properties['hostname']};DATABASE={properties['dbname']};TRUSTED_CONNECTION=yes;"
            return connection_string

        except FileNotFoundError:
            raise Exception(f"Property file '{property_file_name}' not found. Ensure it's in the correct location.")
        except Exception as e:
            raise Exception(f"Error reading property file or constructing connection string: {e}")
