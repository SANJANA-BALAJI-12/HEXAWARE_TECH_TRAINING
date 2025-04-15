from abc import ABC, abstractmethod
from Hospital_Management.entity.Appointment import Appointment  # Import the Appointment entity class

class IHospitalService(ABC):
    # Abstract method to get an appointment by ID
    @abstractmethod
    def getAppointmentById(self, appointment_id):
        pass

    # Abstract method to get appointments for a specific patient
    @abstractmethod
    def getAppointmentsForPatient(self, patient_id):
        pass

    # Abstract method to get appointments for a specific doctor
    @abstractmethod
    def getAppointmentsForDoctor(self, doctor_id):
        pass

    # Abstract method to schedule an appointment
    @abstractmethod
    def scheduleAppointment(self, appointment):
        pass

    # Abstract method to update an appointment
    @abstractmethod
    def updateAppointment(self, appointment):
        pass

    # Abstract method to cancel an appointment
    @abstractmethod
    def cancelAppointment(self, appointment_id):
        pass
