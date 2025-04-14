#Pytest — File Execution
#We will learn how to execute single test file and multiple test files.
#We already have a test file test_PYTEST_EX-1.py created. Create a new test file test_PYTEST_EX-2.py with the following code:
"""
def test_greater():
   num = 100
   assert num > 100

def test_greater_equal():
   num = 100
   assert num >= 100

def test_less():
   num = 100
   assert num < 200
"""
#Commands which can be used to run the above code:
#pytest -v -The above command will run tests from both test_PYTEST_EX-1.py and test_PYTEST_EX-2.py


##Updating the test_PYTEST_EX-2.py to see how it works for grouping the tests using markers
import pytest
@pytest.mark.great
def test_greater():
   num = 100
   assert num > 100

@pytest.mark.great
def test_greater_equal():
   num = 100
   assert num >= 100

@pytest.mark.others
def test_less():
   num = 100
   assert num < 200

