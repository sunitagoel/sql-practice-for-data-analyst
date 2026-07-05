
/*
====================
Day 01
Topic: SELECT, FROM & WHERE
Dataset: Hospital Management Dataset
Author: Sunita Goel
====================
*/

----------------------------------------
--Q1 Display all columns from the dataset.
----------------------------------------
SELECT * FROM dbo.Hospital_Dataset;


----------------------------------------
--Q2 Display only these columns- Patient_ID,Age,Gender,Department
----------------------------------------
SELECT patient_id, 
Age, 
Gender, 
Department AS Dept 
FROM dbo.Hospital_Dataset;


----------------------------------------
--Q3 Show all patients whose Gender is Female.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Gender = 'Female';


----------------------------------------
--Q4 Show all patients whose Department is Cardiology.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Department = 'Cardiology';


----------------------------------------
--Q5 Display patients whose Age is greater than 60.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Age > 60;


----------------------------------------
--Q6 Display patients whose City is Delhi.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE City = 'Delhi';


----------------------------------------
--Q7 Show patients admitted through Emergency.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Admission_Type = 'Emergency';


----------------------------------------
--Q8 Display patients whose Blood Group is O+.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Blood_Group = 'O+';


----------------------------------------
--Q9 Show patients whose Age is between 30 and 50.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Age BETWEEN 30 AND 50;


----------------------------------------
--Q10 Display patients whose Length_of_Stay is greater than 10 days.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Length_of_Stay > 10;


----------------------------------------
--Q11 Show patients whose Billing_Amount is greater than 100000.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Billing_Amount > 100000;


----------------------------------------
--Q12 Display patients whose Recovery_Status is Recovered.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Recovery_Status = 'Recovered';


----------------------------------------
--Q13 Show patients who have Diabetes = 'Yes'.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Diabetes = 1;


----------------------------------------
--Q14 Display patients who are Smokers.
----------------------------------------


SELECT * 
FROM dbo.Hospital_Dataset
WHERE Smoker = 1;


----------------------------------------
--Q15 Show patients admitted in Delhi AND whose Department is Cardiology.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Department = 'Cardiology' AND City = 'Delhi';


----------------------------------------
--Q16 Display Female patients older than 50.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Gender = 'Female' AND Age > 50;


----------------------------------------
--Q17 Show Emergency patients whose Severity_Level is High.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Severity_Level = 'High' AND Admission_Type = 'Emergency';


----------------------------------------
--Q18 Display patients whose Billing_Amount is greater than 80000 AND Insurance_Coverage is less than 30000.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Billing_Amount > 80000 AND Insurance_Coverage < 30000;


----------------------------------------
--Q19 Show patients who have both Diabetes = 'Yes' AND Hypertension = 'Yes'.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Diabetes = 1 AND Hypertension = 1;


----------------------------------------
--Q20 Display patients who stayed more than 7 days and whose Recovery_Status is Improved.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Length_of_Stay > 7 AND Recovery_Status = 'Improved';
