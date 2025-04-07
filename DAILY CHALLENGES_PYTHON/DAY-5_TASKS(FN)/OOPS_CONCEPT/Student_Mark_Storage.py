class Student:
    def __init__(self, name, marks):
        self.name = name
        self.marks = marks  # List of marks in three subjects

    def total_marks(self):
        return sum(self.marks)

# Input number of students
students = []
n = int(input("Enter number of students: "))
for _ in range(n):
    name = input("Enter student name: ")
    marks = [int(input(f"Enter marks for subject {_ + 1}: ")) for _ in range(3)]
    students.append(Student(name, marks))

# Display student details
for student in students:
    print(f"Name: {student.name}, Marks: {student.marks}, Total: {student.total_marks()}")
