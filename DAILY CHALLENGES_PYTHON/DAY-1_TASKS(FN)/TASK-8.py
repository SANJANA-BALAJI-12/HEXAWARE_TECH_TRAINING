#TASK-8: SIMPLE INTEREST:

principal = float(input("Enter principal amount: "))
rate = float(input("Enter annual interest rate (%): "))
time = float(input("Enter time in years: "))

si = (principal * rate * time) / 100
total = principal + si

print("Simple Interest:", si)
print("Total Amount Payable:", total)