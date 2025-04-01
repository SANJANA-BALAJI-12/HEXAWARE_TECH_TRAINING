#PATTERN PRINTING-3
"""
1
1 2
1 2 1
1 2 2 1
1 2 2 2 1
"""
for i in range(1, 6):
    print()
    for j in range(1, i + 1):
        if j == 1 or j == i:
            print(1, end=" ")
        else:
            print(2, end=" ")


