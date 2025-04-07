# File: Bank_package/Bank.py
class Bank:
    def __init__(self):
        self.balance = 0

    def deposit(self, amount):
        self.balance += amount
        print(f"Deposited: {amount}. Current balance: {self.balance}")

    def withdraw(self, amount):
        if amount <= self.balance:
            self.balance -= amount
            print(f"Withdrawn: {amount}. Current balance: {self.balance}")
        else:
            print("Insufficient balance!")
