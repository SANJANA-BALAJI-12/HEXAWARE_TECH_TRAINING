from Database_Connectivity import *


def main():
    while True:
        print("\nCRUD Operations Menu:")
        print("1. Add Rows Dynamically")
        print("2. Update a Row")
        print("3. Delete a Row")
        print("4. Select Rows")
        print("5. Exit")

        choice = input("Enter your choice: ")
        if choice == '1':
            insert_rows_dynamically()
        elif choice == '2':
            update_row()
        elif choice == '3':
            delete_row()
        elif choice == '4':
            select_rows()
        elif choice == '5':
            print("Exiting the program...")
            break
        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()
