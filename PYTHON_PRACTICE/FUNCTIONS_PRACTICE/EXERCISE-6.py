#usage of keyword Argument
#keyword Argument means value in the arguments can be in any order

def items(item,price):
    print("Item is %s" % item)
    print('Price is %.2f' % price)

#call the function items
items(price=500.0,item='Sugar')
items(item='Sugar',price=650.0)
items('Rice',1300)
#items(1300,'Rice')

