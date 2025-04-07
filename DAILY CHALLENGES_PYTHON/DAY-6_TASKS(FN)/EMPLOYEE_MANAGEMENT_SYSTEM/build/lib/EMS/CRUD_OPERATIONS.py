# Insert operation
def insert_employee(employee_id, name, department, salary):
    conn = connect_to_db()
    if conn:
        try:
            cursor = conn.cursor()
            query = "INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES (?, ?, ?, ?)"
            cursor.execute(query, (employee_id, name, department, salary))
            conn.commit()
            print("Employee added successfully!")
        except pyodbc.Error as e:
            print(f"Error inserting data: {e}")
        finally:
            conn.close()

# Update operation
def update_employee(employee_id, department):
    conn = connect_to_db()
    if conn:
        try:
            cursor = conn.cursor()
            query = "UPDATE Employees SET Department = ? WHERE EmployeeID = ?"
            cursor.execute(query, (department, employee_id))
            conn.commit()
            print("Employee updated successfully!")
        except pyodbc.Error as e:
            print(f"Error updating data: {e}")
        finally:
            conn.close()

# Delete operation
def delete_employee(employee_id):
    conn = connect_to_db()
    if conn:
        try:
            cursor = conn.cursor()
            query = "DELETE FROM Employees WHERE EmployeeID = ?"
            cursor.execute(query, (employee_id,))
            conn.commit()
            print("Employee deleted successfully!")
        except pyodbc.Error as e:
            print(f"Error deleting data: {e}")
        finally:
            conn.close()

# Select operation
def fetch_employees():
    conn = connect_to_db()
    if conn:
        try:
            cursor = conn.cursor()
            query = "SELECT * FROM Employees"
            cursor.execute(query)
            rows = cursor.fetchall()
            print("Employee Records:")
            for row in rows:
                print(f"ID: {row.EmployeeID}, Name: {row.Name}, Department: {row.Department}, Salary: {row.Salary}")
        except pyodbc.Error as e:
            print(f"Error fetching data: {e}")
        finally:
            conn.close()
