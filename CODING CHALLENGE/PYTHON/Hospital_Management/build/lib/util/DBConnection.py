import pyodbc
from Hospital_Management.util.PropertyUtil import PropertyUtil

class DBConnection:
    connection = None  # Static variable to hold the connection object

    @staticmethod
    def getConnection(property_file_name):
        try:
            if DBConnection.connection is None:
                # Get connection string from PropertyUtil
                connection_string = PropertyUtil.getPropertyString(property_file_name)
                # Establish connection using PyODBC
                DBConnection.connection = pyodbc.connect(connection_string)
                print("Connected to database successfully!")
            return DBConnection.connection
        except pyodbc.Error as e:
            raise Exception(f"Database connection failed: {e}")
