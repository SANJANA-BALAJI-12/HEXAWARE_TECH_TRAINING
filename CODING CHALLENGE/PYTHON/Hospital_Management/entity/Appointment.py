class Appointment:
    # Private variables
    def __init__(self, appointment_id=None, patient_id=None, doctor_id=None, appointment_date=None, description=None):
        # Constructor: Default and parameterized
        self.__appointment_id = appointment_id
        self.__patient_id = patient_id
        self.__doctor_id = doctor_id
        self.__appointment_date = appointment_date
        self.__description = description

    # Getter for appointment_id
    def get_appointment_id(self):
        return self.__appointment_id

    # Setter for appointment_id
    def set_appointment_id(self, appointment_id):
        self.__appointment_id = appointment_id

    # Getter for patient_id
    def get_patient_id(self):
        return self.__patient_id

    # Setter for patient_id
    def set_patient_id(self, patient_id):
        self.__patient_id = patient_id

    # Getter for doctor_id
    def get_doctor_id(self):
        return self.__doctor_id

    # Setter for doctor_id
    def set_doctor_id(self, doctor_id):
        self.__doctor_id = doctor_id

    # Getter for appointment_date
    def get_appointment_date(self):
        return self.__appointment_date

    # Setter for appointment_date
    def set_appointment_date(self, appointment_date):
        self.__appointment_date = appointment_date

    # Getter for description
    def get_description(self):
        return self.__description

    # Setter for description
    def set_description(self, description):
        self.__description = description

    # String representation (toString equivalent)
    def __str__(self):
        return f"Appointment(appointment_id={self.__appointment_id}, patient_id={self.__patient_id}, doctor_id={self.__doctor_id}, appointment_date={self.__appointment_date}, description={self.__description})"
