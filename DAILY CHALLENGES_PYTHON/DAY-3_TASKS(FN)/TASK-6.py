#EXTRACT EVEN AND ODD VALUES FROM A DICTIONARY AND FIND THEIR SUMS.

# CREATE A DICTIONARY
data = {"a": 10, "b": 15, "c": 20, "d": 25, "e": 30}

# SEPARATE EVEN AND ODD VALUES
even_values = [value for value in data.values() if value % 2 == 0]
odd_values = [value for value in data.values() if value % 2 != 0]

# CALCULATE SUMS
sum_even = sum(even_values)
sum_odd = sum(odd_values)
print("Even Values:", even_values)
print("Sum of Even Values:", sum_even)
print("Odd Values:", odd_values)
print("Sum of Odd Values:", sum_odd)

