from .Connection import connect_to_db

def insert_row():
    conn = connect_to_db()
    cursor = conn.cursor()

    # Ask the user for input dynamically
    employee_id = input("Enter value for EmployeeID: ")
    name = input("Enter value for Name: ")
    department = input("Enter value for Department: ")
    salary = input("Enter value for Salary: ")

    query = "INSERT INTO Employees (EmployeeID, Name, Department, Salary) VALUES (?, ?, ?, ?)"
    cursor.execute(query, (employee_id, name, department, salary))

    conn.commit()
    print("Row inserted successfully!")
    conn.close()

def insert_rows_dynamically():
    while True:
        insert_row()
        choice = input("Do you want to insert one more row? (y/n): ")
        if choice.lower() != 'y':
            break
