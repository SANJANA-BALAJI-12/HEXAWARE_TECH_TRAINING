class Duck:
    def talk(self):
        print("Duck says Quak")

class Human:
    def talk(self):
        print('Human says Hello Hi..')
#end of the class Human
# A method written seperatly, where we are calling call_talk()
def call_talk(ob):
    ob.talk()

#Call call_talk method and pass object
x=Duck()
call_talk(x)
x=Human()
call_talk(x)