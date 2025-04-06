#ARITHMETIC OPERATORS:

a = int(input("Enter a value for a: "))
b = int(input("Enter a value for b: "))
operation = input("Enter operator (+, -, /, *): ")

match operation:
    case "+":
        print("Sum: ", a + b)
    case "-":
        print("Difference: ", a - b)
    case "*":
        print("Multiplication: ", a * b)
    case "/":
        print("Division: ", a / b)


