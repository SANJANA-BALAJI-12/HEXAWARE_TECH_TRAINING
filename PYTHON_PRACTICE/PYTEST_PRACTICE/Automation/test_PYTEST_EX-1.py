#Pytest — Starting With Basic Test

"""import math

def test_sqrt():
   num = 25
   assert math.sqrt(num) == 5

def testsquare():
   num = 7
   assert 7*7 == 49

def testequality():
   assert 10 == 11
"""

#Commands which can be used to run the above code:
#1.pytest
#2.pytest filename.py - this command can be used when your python file does not have test_ before the .py file

#Updating the test_PYTEST_EX-1.py to see how it works for grouping the tests using markers
import pytest
import math

@pytest.mark.square
def test_sqrt():
   num = 25
   assert math.sqrt(num) == 5

@pytest.mark.square
def testsquare():
   num = 7
   assert 7*7 == 40

@pytest.mark.others
def test_equality():
   assert 10 == 11





