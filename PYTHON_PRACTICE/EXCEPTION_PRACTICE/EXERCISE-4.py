#Exception Handling

try:
    num=int(input("Enter the number"))
    print(num**2)
except(KeyboardInterrupt,ValueError,TypeError):
    print("Please check before you enter")
print("Completed")