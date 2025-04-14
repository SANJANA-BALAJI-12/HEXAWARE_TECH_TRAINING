#Pytest — Substring Matching of Test Names

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


#Commands which can be used to run the above code:
#To execute the tests containing a string in its name we can use the following commands
#2.pytest -k great -v
