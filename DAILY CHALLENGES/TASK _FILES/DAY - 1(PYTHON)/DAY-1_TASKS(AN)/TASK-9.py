#DECIMAL TO BINARY CONVERSION:

decimal_num = int(input("Enter a decimal number: "))

binary_num = ""

for i in range(decimal_num.bit_length() - 1, -1, -1):
    binary_num += str((decimal_num >> i) & 1)

print("Binary equivalent:", binary_num)
