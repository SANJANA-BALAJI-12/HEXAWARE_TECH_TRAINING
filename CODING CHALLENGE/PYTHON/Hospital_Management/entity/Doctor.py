class Doctor:
    # Private variables
    def __init__(self, doctor_id=None, first_name=None, last_name=None, specialization=None, contact_number=None):
        # Constructor: Default and parameterized
        self.__doctor_id = doctor_id
        self.__first_name = first_name
        self.__last_name = last_name
        self.__specialization = specialization
        self.__contact_number = contact_number

    # Getter for doctor_id
    def get_doctor_id(self):
        return self.__doctor_id

    # Setter for doctor_id
    def set_doctor_id(self, doctor_id):
        self.__doctor_id = doctor_id

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

    # Getter for specialization
    def get_specialization(self):
        return self.__specialization

    # Setter for specialization
    def set_specialization(self, specialization):
        self.__specialization = specialization

    # Getter for contact_number
    def get_contact_number(self):
        return self.__contact_number

    # Setter for contact_number
    def set_contact_number(self, contact_number):
        self.__contact_number = contact_number

    # String representation (toString equivalent)
    def __str__(self):
        return f"Doctor(doctor_id={self.__doctor_id}, first_name={self.__first_name}, last_name={self.__last_name}, specialization={self.__specialization}, contact_number={self.__contact_number})"
