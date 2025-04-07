class Store:
    def __init__(self):
        self.products = {
            "Rice": 60,
            "Oil": 150,
            "Sugar": 45,
            "Dal": 70,
            "Maida": 40  
        }  # Product: Price

    def display_menu(self):
        print("Available Products:")
        for product, price in self.products.items():
            print(f"{product}: ₹{price}/unit")

    def generate_bill(self, quantities):
        total = 0
        print("\nBill:")
        for product, quantity in quantities.items():
            if product in self.products:
                cost = self.products[product] * quantity
                total += cost
                print(f"{product}: {quantity} units x ₹{self.products[product]} = ₹{cost}")
        print(f"\nTotal Amount: ₹{total}")

# Create a store object
store = Store()
store.display_menu()

# Input quantities for products
quantities = {}
while True:
    product = input("Enter product name (or 'done' to finish): ").capitalize()
    if product == 'Done':
        break
    if product in store.products:
        quantity = int(input(f"Enter quantity for {product}: "))
        quantities[product] = quantity
    else:
        print(f"{product} is not available. Please choose from the menu.")

# Generate the bill
store.generate_bill(quantities)
