#TASK-9: COMPOUND INTEREST:

principal = float(input("Enter principal amount: "))
rate = float(input("Enter annual interest rate (%): "))
time = float(input("Enter time in years: "))

a = principal * (1 + rate / 100) ** time
ci = a - principal

print("Compound Interest:", ci)
print("Total Amount Payable:", a)