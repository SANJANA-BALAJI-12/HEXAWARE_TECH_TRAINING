from Employee import *

#calculate gross salary of employee by taking basic
basic=float(input("Enter the basic salary"))

#calculate the gross salary
gross=basic+da(basic) + hra(basic)
print('Your Gross Salary is {:10.2f}'.format(gross))

#calculate the net salary
net = gross-pf(basic)-itax(gross)
print('Your Net Salary is {:10.2f}'.format(net))




