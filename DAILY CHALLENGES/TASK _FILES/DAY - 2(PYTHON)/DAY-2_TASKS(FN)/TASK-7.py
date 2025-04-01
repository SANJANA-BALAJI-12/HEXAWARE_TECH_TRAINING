#FIBONACCI SERIES

start = int(input("Enter start number: "))
end = int(input("Enter end number: "))
a, b = 0, 1


while a <= end:
    if a >= start:
        print(a, end=" ")
    a, b = b, a + b


