class Number:
    even=0   #Default value
    def check(self,num):
        if num%2==0:
            self.even=1
    def even_odd(self,num):
        #Nesting the method
        self.check(num)
        if self.even==1:
            print(num,"is even")
        else:
            print(num,"is odd")

#Create an object
n= Number()
n.even_odd(22)