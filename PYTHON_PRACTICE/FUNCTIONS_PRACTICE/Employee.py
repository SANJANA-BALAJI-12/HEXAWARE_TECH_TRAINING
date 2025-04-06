#calculating the dearness allowance
def da(basic):
    da=basic*80/100
    return da

#calculating the house rent allowance
def hra(basic):
    hra=basic*15/100
    return hra

#calculating the pf
def pf(basic):
    pf = basic*12/100
    return pf

#calculate the income tax payable to employee
def itax(gross):
    tax=gross*0.1
    return tax