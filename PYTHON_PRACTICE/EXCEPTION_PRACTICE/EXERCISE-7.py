#Exception Handling in Integer Conversion with ValueError Management.

def temp_convert(var):
    try:
        return int(var)
    except ValueError as Argument:
        print("Argument is not numbers",Argument)

#call the function
temp_convert("a")
