#Exception Handling: Square with Robust Input Validation".

try:
    num=int(input("Enter the Number"))
    print(num**2)
except KeyboardInterrupt:
    print("You have entered a number....Program Terminating")
except ValueError:
    print("Check the value before you enter")
print("End of the program")
