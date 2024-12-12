-- Queries on the Hospital Database

-- 1. List all patients and their details.
SELECT * FROM Patients;

-- 2. Find all doctors specialized in Neurology.
SELECT * FROM Doctors WHERE Specialization = 'Neurology';

-- 3. List all appointments for a specific patient (e.g., Rajesh Sharma).
SELECT a.* 
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
WHERE p.FirstName = 'Rajesh' AND p.LastName = 'Sharma';

-- 4. List all treatments given on a specific date (e.g., 2024-12-15).
SELECT * FROM Treatments WHERE TreatmentDate = '2024-12-15';

-- 5. Find all appointments with a specific doctor (e.g., Dr. Suresh Gupta).
SELECT a.* 
FROM Appointments a
JOIN Doctors d ON a.DoctorID = d.DoctorID
WHERE d.FirstName = 'Dr. Suresh' AND d.LastName = 'Gupta';

-- 6. Count the total number of patients.
SELECT COUNT(*) AS TotalPatients FROM Patients;

-- 7. Find all male patients.
SELECT * FROM Patients WHERE Gender = 'Male';

-- 8. List all appointments scheduled after a specific date (e.g., 2024-12-16).
SELECT * FROM Appointments WHERE AppointmentDate > '2024-12-16';

-- 9. List all doctors and their specializations.
SELECT FirstName, LastName, Specialization FROM Doctors;

-- 10. List all appointments and their reasons.
SELECT AppointmentID, AppointmentDate, Reason FROM Appointments;
