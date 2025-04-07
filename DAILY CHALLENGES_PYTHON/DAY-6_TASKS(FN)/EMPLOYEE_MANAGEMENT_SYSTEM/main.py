from EMS.CRUD_OPERATIONS import insert_employee, update_employee, delete_employee, fetch_employees

def main():
    while True:
        print("\nEmployee Management System")
        print("1. Add Employee")
        print("2. Update Employee")
        print("3. Delete Employee")
        print("4. View Employees")
        print("5. Exit")

        choice = input("Enter your choice: ")
        if choice == '1':
            employee_id = input("Enter Employee ID: ")
            name = input("Enter Name: ")
            department = input("Enter Department: ")
            salary = input("Enter Salary: ")
            insert_employee(employee_id, name, department, salary)
        elif choice == '2':
            employee_id = input("Enter Employee ID to update: ")
            department = input("Enter new Department: ")
            update_employee(employee_id, department)
        elif choice == '3':
            employee_id = input("Enter Employee ID to delete: ")
            delete_employee(employee_id)
        elif choice == '4':
            fetch_employees()
        elif choice == '5':
            print("Exiting...")
            break
        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()
