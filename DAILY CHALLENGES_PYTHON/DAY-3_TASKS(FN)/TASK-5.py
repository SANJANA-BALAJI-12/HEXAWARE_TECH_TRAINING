# CREATE NESTED TUPLE FOR MARKS
marks = []

# INPUT MARKS FOR 5 STUDENTS
for i in range(5):
    print(f"Enter marks for Student {i+1} in 3 subjects:")
    subject_marks = tuple(int(input(f"Subject {j+1}: ")) for j in range(3))
    marks.append(subject_marks)

# CONVERT TO TUPLE
marks = tuple(marks)
print("Marks:", marks)
