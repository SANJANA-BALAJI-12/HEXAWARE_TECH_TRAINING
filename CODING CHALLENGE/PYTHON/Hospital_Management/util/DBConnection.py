import pyodbc
from Hospital_Management.util.PropertyUtil import PropertyUtil


class DBConnection:
    connection = None

    @staticmethod
    def getConnection():
        if DBConnection.connection is None:
            try:
                conn_str = PropertyUtil.get_property_string()
                DBConnection.connection = pyodbc.connect(conn_str)
                print("Connection Established Sucessfully......")
            except Exception as e:
                print(f"Failed to connect: {e}")
        return DBConnection.connection

