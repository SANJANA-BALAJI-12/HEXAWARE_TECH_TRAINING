#FIND THE HIGHEST TWO VALUES IN A DICTIONARY.

# CREATE A DICTIONARY
data = {"a": 50, "b": 20, "c": 80, "d": 40, "e": 100}

# FIND THE HIGHEST TWO VALUES
highest_values = sorted(data.values(), reverse=True)[:2]

# DISPLAY RESULTS
print("Highest Two Values:", highest_values)
