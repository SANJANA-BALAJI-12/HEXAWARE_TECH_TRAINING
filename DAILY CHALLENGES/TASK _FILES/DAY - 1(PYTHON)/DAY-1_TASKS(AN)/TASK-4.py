#EMPLOYEE BONUS:

service_years = int(input("Enter years of service: "))
salary = float(input("Enter the salary: "))

if service_years >= 10:
    bonus = salary * 0.10
elif service_years >= 5 and service_years < 10:
    bonus = salary * 0.05
elif service_years >= 3 and service_years < 5:
    bonus = salary * 0.03
else:
    bonus = 0

total_salary = salary + bonus

print("Bonus: ", bonus)
print("Total Salary: ", total_salary)
