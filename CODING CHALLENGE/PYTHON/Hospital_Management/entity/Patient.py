class Patient:
    # Private variables
    def __init__(self, patient_id=None, first_name=None, last_name=None, date_of_birth=None, gender=None, contact_number=None, address=None):
        # Constructor: Default and parameterized
        self.__patient_id = patient_id
        self.__first_name = first_name
        self.__last_name = last_name
        self.__date_of_birth = date_of_birth
        self.__gender = gender
        self.__contact_number = contact_number
        self.__address = address

    # Getter for patient_id
    def get_patient_id(self):
        return self.__patient_id

    # Setter for patient_id
    def set_patient_id(self, patient_id):
        self.__patient_id = patient_id

    # Getter for first_name
    def get_first_name(self):
        return self.__first_name

    # Setter for first_name
    def set_first_name(self, first_name):
        self.__first_name = first_name

    # Getter for last_name
    def get_last_name(self):
        return self.__last_name

    # Setter for last_name
    def set_last_name(self, last_name):
        self.__last_name = last_name

    # Getter for date_of_birth
    def get_date_of_birth(self):
        return self.__date_of_birth

    # Setter for date_of_birth
    def set_date_of_birth(self, date_of_birth):
        self.__date_of_birth = date_of_birth

    # Getter for gender
    def get_gender(self):
        return self.__gender

    # Setter for gender
    def set_gender(self, gender):
        self.__gender = gender

    # Getter for contact_number
    def get_contact_number(self):
        return self.__contact_number

    # Setter for contact_number
    def set_contact_number(self, contact_number):
        self.__contact_number = contact_number

    # Getter for address
    def get_address(self):
        return self.__address

    # Setter for address
    def set_address(self, address):
        self.__address = address

    # String representation (toString equivalent)
    def __str__(self):
        return f"Patient(patient_id={self.__patient_id}, first_name={self.__first_name}, last_name={self.__last_name}, date_of_birth={self.__date_of_birth}, gender={self.__gender}, contact_number={self.__contact_number}, address={self.__address})"
