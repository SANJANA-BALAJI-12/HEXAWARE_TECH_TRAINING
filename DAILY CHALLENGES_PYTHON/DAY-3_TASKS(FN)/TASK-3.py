# INPUT TWO LISTS
list1 = [10, 20, 30]
list2 = [40, 50, 60]

# COMBINE LISTS
combined_list = list1 + list2

# FIND MAXIMUM ELEMENT AND ITS INDEX
max_element = max(combined_list)
if max_element in list1:
    index = list1.index(max_element)
    source_list = "List 1"
else:
    index = list2.index(max_element)
    source_list = "List 2"

print(f"Maximum Element: {max_element}")
print(f"Index in {source_list}: {index}")
