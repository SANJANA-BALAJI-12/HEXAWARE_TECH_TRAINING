--CREATE DATABASE HospitalManagementDB;

GO
USE HospitalManagementDB;

-------------Creating the Schema---------------------

--CREATE SCHEMA hos;

-------------Creating the Tables-----------------------

--Patient Table

/*CREATE TABLE hos.Patient (
    patient_id INT PRIMARY KEY ,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    date_of_birth DATE,
    gender NVARCHAR(10),
    contact_number NVARCHAR(20),
    address NVARCHAR(255)
);*/


--Doctor Table

/*CREATE TABLE hos.Doctor (
    doctor_id INT PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    specialization NVARCHAR(100),
    contact_number NVARCHAR(20)
);*/

--Appointment Table

/*CREATE TABLE hos.Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT FOREIGN KEY REFERENCES hos.Patient(patient_id) ON DELETE CASCADE,
    doctor_id INT FOREIGN KEY REFERENCES hos.Doctor(doctor_id) ON DELETE CASCADE,
    appointment_date DATE,
    description NVARCHAR(255)
);*/



----------------Inserting values into the tables--------------------------

/*INSERT INTO hos.Patient (patient_id, first_name, last_name, date_of_birth, gender, contact_number, address)
VALUES 
(1, 'Gopinath', 'Rajan', '1990-01-15', 'Male', '9876543210', 'Chennai, Tamil Nadu'),
(2, 'Roobini', 'Kumar', '1992-06-25', 'Female', '9876543211', 'Coimbatore, Tamil Nadu'),
(3, 'Sathis', 'Murugan', '1988-11-10', 'Male', '9876543212', 'Madurai, Tamil Nadu'),
(4, 'Nandhini', 'Raj', '1995-03-18', 'Female', '9876543213', 'Salem, Tamil Nadu'),
(5, 'Sanjana', 'Iyer', '1997-07-09', 'Female', '9876543214', 'Tiruppur, Tamil Nadu'),
(6, 'Ramesh', 'Vasan', '1985-09-30', 'Male', '9876543215', 'Erode, Tamil Nadu'),
(7, 'Koushik', 'Naidu', '1993-12-15', 'Male', '9876543216', 'Tiruchirappalli, Tamil Nadu'),
(8, 'Magesh', 'Selvan', '1991-05-22', 'Male', '9876543217', 'Vellore, Tamil Nadu'),
(9, 'Anjali', 'Sharma', '1994-02-11', 'Female', '9876543218', 'Chennai, Tamil Nadu'),
(10, 'Divya', 'Ravi', '1989-08-08', 'Female', '9876543219', 'Thanjavur, Tamil Nadu');
*/

/*INSERT INTO hos.Doctor (doctor_id, first_name, last_name, specialization, contact_number)
VALUES
(100, 'Arun', 'Kumar', 'Cardiology', '9876554321'),
(101, 'Karthik', 'Sharma', 'Neurology', '9876554322'),
(102, 'Meena', 'Raj', 'Orthopedics', '9876554323'),
(103, 'Priya', 'Sundar', 'Gynecology', '9876554324'),
(104, 'Ravi', 'Mohan', 'Pediatrics', '9876554325'),
(105, 'Ragavi', 'Kumar', 'Dermatology', '9876554326'),
(106, 'Mani', 'Rajan', 'Oncology', '9876554327'),
(107, 'Sakthi', 'Murugan', 'ENT', '9876554328'),
(108, 'Vignesh', 'Iyer', 'Ophthalmology', '9876554329'),
(109, 'Srinath', 'Ravi', 'Radiology', '9876554330');
*/

/*INSERT INTO hos.Appointment (appointment_id, patient_id, doctor_id, appointment_date, description)
VALUES
(1, 1, 100, '2025-04-09', 'General Checkup'),
(2, 2, 101, '2025-04-10', 'Neurology Consultation'),
(3, 3, 102, '2025-04-11', 'Knee Pain Treatment'),
(4, 4, 103, '2025-04-12', 'Prenatal Checkup'),
(5, 5, 104, '2025-04-13', 'Child Fever Consultation'),
(6, 6, 105, '2025-04-14', 'Skin Allergy Treatment'),
(7, 7, 106, '2025-04-15', 'Cancer Screening'),
(8, 8, 107, '2025-04-16', 'Ear Infection'),
(9, 9, 108, '2025-04-17', 'Eye Vision Test'),
(10, 10, 109, '2025-04-18', 'Chest X-Ray');
*/

-----------------------------------------Viewing the Table-----------------------------

--SELECT * FROM hos.Appointment;
--SELECT * FROM hos.Patient;
--SELECT * FROM hos.Doctor;