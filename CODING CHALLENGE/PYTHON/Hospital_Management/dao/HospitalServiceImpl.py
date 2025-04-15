import sqlite3
from Hospital_Management.entity.Appointment import Appointment  # Import the Appointment entity
from Hospital_Management.dao.IHospitalService import IHospitalService  # Import the IHospitalService interface
from Hospital_Management.exception.PatientNumberNotFoundException import PatientNumberNotFoundException


class HospitalServiceImpl(IHospitalService):
    def __init__(self, connection):
        self.connection = connection

    # Method to get an appointment by ID
    def getAppointmentById(self, appointment_id):
        cursor = self.connection.cursor()
        cursor.execute("SELECT * FROM hos.Appointment WHERE appointment_id = ?", (appointment_id,))
        result = cursor.fetchone()
        if result:
            # Convert result tuple to Appointment object
            return Appointment(*result)
        return None

    # Method to get appointments for a specific patient
    def getAppointmentsForPatient(self, patient_id):
        cursor = self.connection.cursor()
        cursor.execute("SELECT * FROM hos.Appointment WHERE patient_id = ?", (patient_id,))
        results = cursor.fetchall()
        if not results:
            raise PatientNumberNotFoundException(f"No appointments found for patient ID {patient_id}")
        # Convert each result tuple into an Appointment object
        return [Appointment(*result) for result in results]

    # Method to get appointments for a specific doctor
    def getAppointmentsForDoctor(self, doctor_id):
        cursor = self.connection.cursor()
        cursor.execute("SELECT * FROM hos.Appointment WHERE doctor_id = ?", (doctor_id,))
        results = cursor.fetchall()
        # Convert each result tuple into an Appointment object
        return [Appointment(*result) for result in results]

    # Method to schedule an appointment
    def scheduleAppointment(self, appointment):
        cursor = self.connection.cursor()

        #Check if patient_id exists
        cursor.execute("SELECT 1 FROM hos.Patient WHERE patient_id = ?", (appointment.get_patient_id(),))
        if not cursor.fetchone():
            raise PatientNumberNotFoundException()  # Raise it here

        # Optional: Also validate doctor_id
        cursor.execute("SELECT 1 FROM hos.Doctor WHERE doctor_id = ?", (appointment.get_doctor_id(),))
        if not cursor.fetchone():
            print(
                "Doctor ID not found – cannot schedule appointment.")  # You can add DoctorNotFoundException later if needed
            return False

        try:
            cursor.execute(
                "INSERT INTO hos.Appointment (appointment_id, patient_id, doctor_id, appointment_date, description) VALUES (?, ?, ?, ?, ?)",
                (
                    appointment.get_appointment_id(),
                    appointment.get_patient_id(),
                    appointment.get_doctor_id(),
                    appointment.get_appointment_date(),
                    appointment.get_description()
                )
            )
            self.connection.commit()
            return True

        except Exception as e:
            print(f"Error scheduling appointment: {e}")
            return False

    # Method to update an appointment
    def updateAppointment(self, appointment):
        try:
            cursor = self.connection.cursor()
            cursor.execute(
                "UPDATE hos.Appointment SET patient_id = ?, doctor_id = ?, appointment_date = ?, description = ? WHERE appointment_id = ?",
                (
                    appointment.get_patient_id(),
                    appointment.get_doctor_id(),
                    appointment.get_appointment_date(),
                    appointment.get_description(),
                    appointment.get_appointment_id()
                )
            )
            self.connection.commit()
            return True
        except Exception as e:
            print(f"Error updating appointment: {e}")
            return False

    # Method to cancel an appointment
    def cancelAppointment(self, appointment_id):
        try:
            cursor = self.connection.cursor()
            cursor.execute("DELETE FROM hos.Appointment WHERE appointment_id = ?", (appointment_id,))
            self.connection.commit()
            return True
        except Exception as e:
            print(f"Error cancelling appointment: {e}")
            return False



