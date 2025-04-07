#Base class
class Date(object):
    def get_date(self):
        print("2025-02-01")

#Using single inheritance
class Time(Date):
    def get_time(self):
        print("02:43PM")
#Creating an instance of the class
tm= Time()
tm.get_date()
tm.get_time()
print('--------------')