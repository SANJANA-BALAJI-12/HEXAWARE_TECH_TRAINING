#MARKS,AVG AND GRADE:

mark1 = float(input("Enter mark 1: "))
mark2 = float(input("Enter mark 2: "))
mark3 = float(input("Enter mark 3: "))

total_marks = mark1 + mark2 + mark3
average_marks = (mark1 + mark2 + mark3) / 3

if total_marks >= 80:
    print("GRADE A")
elif total_marks >= 70 and total_marks <= 79:
    print("GRADE B")
elif total_marks >= 60 and total_marks <= 69:
    print("GRADE C")
else:
    print("FAIL")

print("Total Marks is: ", total_marks)
print("Average Marks is: ", average_marks)
