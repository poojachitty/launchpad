class NegativeBalanceException(Exception):
    def __init__(self,message):
        self.message = message
class Account:
    def __init__(self,accno,typeaccount,branch,city,balence):
        self.accno=accno
        self.typeaccount=typeaccount
        self.branch=branch
        self.city=city
        self.balence=balence

    def deposit(self):
        amount=float(input("enter the amount to be deposited "))
        if(self.typeaccount=="savings" or self.typeaccount=="current"):
          self.balence+=amount
        else:
            self.balence-=amount

    def withdraw(self):
        amount = float(input("enter the amount to be withdrawn "))
        if (self.typeaccount == "savings" or self.typeaccount == "current"):
            self.balence-=amount
        else:
            self.balence+=amount
        try:
            if (self.balence <= 0):
                raise NegativeBalanceException("Insufficient Amount")
        except NegativeBalanceException as error:
            print(error.message)

    def showdetails(self):
        print("the current balence is ",self.balence)

s=Account(1,"savings","data","banaglore",0)
s.deposit()
s.withdraw()
s.showdetails()