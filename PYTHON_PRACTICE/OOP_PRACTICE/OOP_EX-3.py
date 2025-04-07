# Example of instance variable
class Sample:

    # Constructor to initialize instance variable
    def __init__(self):
        self.x = 1  # Define instance variable 'x'

    # Define instance method
    def modify(self):
        self.x += 1  # Modify the instance variable 'x'

# Create two instances
s1 = Sample()
s2 = Sample()

# Print values of 'x' for both instances
print('x in s1 =', s1.x)
print('x in s2 =', s2.x)

# Modify 'x' in s1
s1.modify()
print('x in s1 =', s1.x)
print('x in s2 =', s2.x)
