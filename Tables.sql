CREATE DATABASE HospitalDB;

USE HospitalDB;

CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    ContactNumber VARCHAR(15),
    Address TEXT
);

CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Specialization VARCHAR(100) NOT NULL,
    ContactNumber VARCHAR(15)
);

CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATETIME NOT NULL,
    Reason TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Treatments (
    TreatmentID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentID INT NOT NULL,
    TreatmentDetails TEXT NOT NULL,
    TreatmentDate DATE NOT NULL,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, ContactNumber, Address)
VALUES 
('Rajesh', 'Sharma', '1985-03-15', 'Male', '9876543210', '12 MG Road, Delhi'),
('Anita', 'Verma', '1990-07-22', 'Female', '9123456789', '45 Nehru Street, Mumbai'),
('Rohan', 'Patel', '1975-09-10', 'Male', '9988776655', '78 Green Avenue, Bangalore'),
('Priya', 'Singh', '2000-05-18', 'Female', '9876501234', '21 Whitefield, Hyderabad'),
('Amit', 'Kumar', '1995-11-30', 'Male', '9112233445', '67 Park Road, Chennai');

INSERT INTO Doctors (FirstName, LastName, Specialization, ContactNumber)
VALUES 
('Dr. Suresh', 'Gupta', 'Cardiology', '9812345678'),
('Dr. Pooja', 'Reddy', 'Neurology', '9876543211'),
('Dr. Anil', 'Desai', 'Pediatrics', '9123456700'),
('Dr. Kavita', 'Nair', 'Orthopedics', '9988771122'),
('Dr. Sanjay', 'Mehta', 'Dermatology', '9867543210');

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Reason)
VALUES 
(1, 1, '2024-12-15 10:30:00', 'Routine Checkup'),
(2, 2, '2024-12-16 11:00:00', 'Migraine Consultation'),
(3, 3, '2024-12-17 09:15:00', 'Child Vaccination'),
(4, 4, '2024-12-18 14:00:00', 'Knee Pain Evaluation'),
(5, 5, '2024-12-19 16:45:00', 'Skin Rash Diagnosis');

INSERT INTO Treatments (AppointmentID, TreatmentDetails, TreatmentDate)
VALUES 
(1, 'Prescribed blood pressure medication', '2024-12-15'),
(2, 'Prescribed migraine relief tablets', '2024-12-16'),
(3, 'Administered MMR vaccine', '2024-12-17'),
(4, 'Recommended physiotherapy sessions', '2024-12-18'),
(5, 'Prescribed anti-inflammatory cream', '2024-12-19');
