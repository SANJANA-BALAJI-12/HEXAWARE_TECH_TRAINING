# CREATE A DICTIONARY WITH PRODUCT INFORMATION
products = {
    "Product1": {"Name": "Laptop", "Price": 60000, "Stock": 10},
    "Product2": {"Name": "Smartphone", "Price": 20000, "Stock": 25},
    "Product3": {"Name": "Headphones", "Price": 1500, "Stock": 50},
}

# DISPLAY PRODUCT INFORMATION
for product_id, details in products.items():
    print(f"{product_id}:")
    for key, value in details.items():
        print(f"  {key}: {value}")
    print()
