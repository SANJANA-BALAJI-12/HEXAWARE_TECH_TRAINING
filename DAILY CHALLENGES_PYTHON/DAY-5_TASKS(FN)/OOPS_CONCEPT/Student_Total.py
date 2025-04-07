class Student:
    def __init__(self, rollno, name, marks):
        self.rollno = rollno
        self.name = name
        self.marks = marks  # List of marks in multiple subjects

    def total_marks(self):
        return sum(self.marks)

# Input student details
n = int(input("Enter number of students: "))
students = []
for _ in range(n):
    rollno = int(input("Enter roll number: "))
    name = input("Enter name: ")
    marks = [int(input(f"Enter marks for subject {_ + 1}: ")) for _ in range(3)]
    students.append(Student(rollno, name, marks))

# Display student details
for student in students:
    print(f"Rollno: {student.rollno}, Name: {student.name}, Total Marks: {student.total_marks()}")
