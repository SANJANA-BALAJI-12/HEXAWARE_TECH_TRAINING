from .Connection import connect_to_db

# Task 1: Insert rows dynamically
def insert_row():
    conn = connect_to_db()
    cursor = conn.cursor()

    # Dynamic user input
    employee_id = input("Enter value for EmployeeID: ")
    name = input("Enter value for Name: ")
    department = input("Enter value for Department: ")
    salary = input("Enter value for Salary: ")

    query = "INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES (?, ?, ?, ?)"
    cursor.execute(query, (employee_id, name, department, salary))
    conn.commit()
    print("Row inserted successfully!")
    conn.close()

# Task 2: Insert rows repeatedly
def insert_rows_dynamically():
    while True:
        insert_row()
        choice = input("Do you want to insert one more row? (y/n): ")
        if choice.lower() != 'y':
            break

# Task 3: Update rows dynamically
def update_row():
    conn = connect_to_db()
    cursor = conn.cursor()

    record_id = input("Enter the EmployeeID of the record to update: ")
    new_department = input("Enter the new value for Department: ")

    query = "UPDATE Employees SET Department = ? WHERE EmployeeID = ?"
    cursor.execute(query, (new_department, record_id))
    conn.commit()
    print("Record updated successfully!")
    conn.close()

# Task 4: CRUD Menu
def delete_row():
    conn = connect_to_db()
    cursor = conn.cursor()

    record_id = input("Enter the EmployeeID of the record to delete: ")
    query = "DELETE FROM Employees WHERE EmployeeID = ?"
    cursor.execute(query, (record_id,))
    conn.commit()
    print("Record deleted successfully!")
    conn.close()

def select_rows():
    conn = connect_to_db()
    cursor = conn.cursor()

    query = "SELECT * FROM Employees"
    cursor.execute(query)
    rows = cursor.fetchall()

    print("Employee Records:")
    for row in rows:
        print(f"ID: {row.EmployeeID}, Name: {row.Name}, Department: {row.Department}, Salary: {row.Salary}")
    conn.close()
