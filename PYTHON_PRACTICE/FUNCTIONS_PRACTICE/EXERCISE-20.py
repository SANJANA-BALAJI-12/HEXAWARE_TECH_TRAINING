#namvar
#special variable named __name__.

#If the script is being executed directly, the value of __name__ is set to '__main__'.

def display():
    print('Hello Welcome to functions')

if __name__ == '__main__':
    display()
    print('The above runs as an individual program')
else:
    print('The above program runs as a module')