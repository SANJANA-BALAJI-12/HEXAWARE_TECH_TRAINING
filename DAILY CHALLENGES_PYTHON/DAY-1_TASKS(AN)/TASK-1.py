#TAX CALCULATION:

income = float(input("Enter your taxable income: "))

if income <= 150000:
    tax = 0
elif income > 150000 and income <= 300000:
    tax = (income - 150000) * 0.10
elif income > 300000 and income <= 500000:
    tax = (income - 300000) * 0.20 + 15000
else:
    tax = (income - 500000) * 0.30 + 55000

print("Tax to be paid:", tax)