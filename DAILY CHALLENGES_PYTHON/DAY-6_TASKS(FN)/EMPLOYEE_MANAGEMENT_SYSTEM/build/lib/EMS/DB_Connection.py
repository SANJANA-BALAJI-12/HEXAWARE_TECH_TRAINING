import pyodbc

def connect_to_db():
    """
    Establishes and returns a connection to the SQL Server database.
    """
    try:
        conn = pyodbc.connect(
            'DRIVER_NAME={ODBC Driver 17 for SQL Server};' 
            'SERVER_NAME=localhost;'  
            'DATABASE_NAME=EmployeeDB;'  
            'TRUSTED_CONNECTION=yes;'
        )
        print("Connected to database successfully!")
        return conn
    except pyodbc.Error as e:
        print(f"Database connection failed: {e}")
        return None