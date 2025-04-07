import pyodbc

def connect_to_db():
    """
    Establishes and returns a connection to the SQL Server database.
    """
    try:
        conn = pyodbc.connect(
            'DRIVER={ODBC Driver 17 for SQL Server};'
            'SERVER=localhost;'  # Replace with your server name
            'DATABASE=DAY6;'  # Replace with your database name
            'TRUSTED_CONNECTION=yes;'
        )
        print("Connected successfully!")
        return conn
    except pyodbc.Error as e:
        print(f"Database connection failed: {e}")
        return None
