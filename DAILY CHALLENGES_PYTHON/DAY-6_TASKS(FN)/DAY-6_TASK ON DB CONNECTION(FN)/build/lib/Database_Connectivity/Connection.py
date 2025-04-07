import pyodbc

def connect_to_db():
    conn = pyodbc.connect(
        'DRIVER_NAME={SQL Server};'
        'SERVER_NAME=localhost;'
        'DATABASE_NAME=Day6;'
        'TRUSTED_CONNECTION=yes;'
    )
    return conn
