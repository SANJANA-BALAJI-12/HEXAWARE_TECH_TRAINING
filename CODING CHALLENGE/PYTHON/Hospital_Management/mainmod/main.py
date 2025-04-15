from Hospital_Management.util.DBConnection import DBConnection
from Hospital_Management.dao.HospitalServiceImpl import HospitalServiceImpl
from Hospital_Management.entity.Appointment import Appointment
from Hospital_Management.exception.PatientNumberNotFoundException import PatientNumberNotFoundException

def main():
    try:
        # Establish database connection
        connection = DBConnection.getConnection()
        hospital_service = HospitalServiceImpl(connection)

        while True:
            print("\n------ Menu ------")
            print("1. Schedule an Appointment")
            print("2. Get Appointments for a Patient")
            print("3. Get Appointments for a Doctor")
            print("4. Update an Appointment")
            print("5. Cancel an Appointment")
            print("6. Exit")
            choice = int(input("Enter your choice: "))


            if choice == 1:
                # Schedule an appointment
                try:
                    # Input details
                    appointment_id = int(input("Enter Appointment ID: "))
                    patient_id = int(input("Enter Patient ID: "))
                    doctor_id = int(input("Enter Doctor ID: "))
                    appointment_date = input("Enter Appointment Date (YYYY-MM-DD): ")
                    description = input("Enter Description: ")

                    # Create appointment object
                    appointment = Appointment(appointment_id, patient_id, doctor_id, appointment_date, description)

                    # Try to schedule
                    success = hospital_service.scheduleAppointment(appointment)
                    if success:
                        print("Appointment Scheduled Successfully!")
                    else:
                        print("Failed to schedule appointment.")

                except PatientNumberNotFoundException:
                    print("Patient Number Not Found – Cannot schedule appointment.")

            elif choice == 2:
                # Get appointments for a patient
                patient_id = int(input("Enter Patient ID: "))
                try:
                    appointments = hospital_service.getAppointmentsForPatient(patient_id)
                    print("Appointments:")
                    for appointment in appointments:
                        print(appointment)
                except PatientNumberNotFoundException as e:
                    print(f"Error: {e}")

            elif choice == 3:
                # Get appointments for a doctor
                doctor_id = int(input("Enter Doctor ID: "))
                appointments = hospital_service.getAppointmentsForDoctor(doctor_id)
                print("Appointments:")
                for appointment in appointments:
                    print(appointment)

            elif choice == 4:
                # Update an appointment
                appointment_id = int(input("Enter Appointment ID to Update: "))
                patient_id = int(input("Enter Updated Patient ID: "))
                doctor_id = int(input("Enter Updated Doctor ID: "))
                appointment_date = input("Enter Updated Appointment Date (YYYY-MM-DD): ")
                description = input("Enter Updated Description: ")

                appointment = Appointment(appointment_id, patient_id, doctor_id, appointment_date, description)
                success = hospital_service.updateAppointment(appointment)
                print("Appointment Updated!" if success else "Failed to update appointment.")

            elif choice == 5:
                # Cancel an appointment
                appointment_id = int(input("Enter Appointment ID to Cancel: "))
                success = hospital_service.cancelAppointment(appointment_id)
                print("Appointment Cancelled!" if success else "Failed to cancel appointment.")

            elif choice == 6:
                print("Exiting the application...")
                break

            else:
                print("Invalid choice!")

    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    main()
