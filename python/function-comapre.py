def compare():
    x = int(input("enter first number"))
    y = int(input("enter second number"))
    z = int(input("enter second number"))
    if ((x > y) & (x > z)):
        print("the largest number is",x)
    elif ((y > x) & (y > z)):
        print("the largest number is",y)
    else:
        print("the largest number is",z)
    exit(0)
print(compare())