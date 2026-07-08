/*
==========================================
Day 02
Topic: Advanced WHERE Clause
Concepts: AND, OR, NOT, IN, LIKE, ORDER BY
Dataset: Hospital Management Dataset
Author: Sunita Goel
==========================================
*/

----------------------------------------
--Q1. Display patients whose Age is less than 30.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE AGE < 30;

----------------------------------------
--Q2. Display patients whose Age is greater than or equal to 65.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Age >= 65;

----------------------------------------
--Q3. Show patients whose Department is Cardiology OR Neurology.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Department IN ('Cardiology','Neurology');

----------------------------------------
--Q4. Display patients whose City is Delhi OR Noida.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE City IN ('Delhi','Noida');

----------------------------------------
--Q5. Show patients who are NOT from Delhi.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE City <> ('Delhi');

----------------------------------------
--Q6. Display patients who are NOT smokers.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Smoker = 0;

----------------------------------------
--Q7. Show patients who do not have Diabetes.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Diabetes  = 0;

----------------------------------------
--Q8. Display patients admitted through Emergency OR Referral.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Admission_Type IN ('Emergency','Referral');

----------------------------------------
--Q9. Show patients whose Blood_Group is A+, B+, or O+.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Blood_Group IN ('A+','B+','O+');

----------------------------------------
--Q10. Display patients whose Recovery_Status is Recovered or Improved.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Recovery_Status IN ('Recovered','Improved');

----------------------------------------
--Q11. Show patients whose Severity_Level is NOT High.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Severity_Level != ('High');

----------------------------------------
--Q12. Display patients whose Age is NOT between 20 and 40.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Age NOT BETWEEN 20 AND 40;

----------------------------------------
--Q13. Show female patients whose Age is greater than 45.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Gender = 'Female' 
AND Age > 45;

----------------------------------------
--Q14. Display male patients admitted through Emergency.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Gender = 'Male' 
AND Admission_Type = 'Emergency';

----------------------------------------
--Q15. Show patients whose Billing_Amount is between 50,000 and 1,00,000.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Billing_Amount BETWEEN 50000 AND 100000;

----------------------------------------
--Q16. Display patients whose Insurance_Coverage is greater than 40,000.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Insurance_Coverage > 40000;

----------------------------------------
--Q17. Show patients who have both Diabetes and Hypertension but are NOT smokers.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Diabetes = 1 
AND Hypertension = 1 
AND Smoker = 0;

----------------------------------------
--Q18. Display patients admitted in Cardiology or Orthopedics whose Age is above 50.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Department IN ('Cardiology','Orthopedics') 
AND Age > 50;

----------------------------------------
--Q19. Show patients whose Length_of_Stay is between 5 and 10 days.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Length_of_Stay BETWEEN 5 AND 10;

----------------------------------------
--Q20. Display patients whose Recovery_Status is NOT Recovered.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Recovery_Status <> ('Recovered');

----------------------------------------
--Q21. Display patients whose City starts with 'D'.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE City LIKE 'D%';

----------------------------------------
--Q22. Show patients whose City ends with 'i'.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE City LIKE '%i';

----------------------------------------
--Q23. Display patients whose Department contains 'General'.
----------------------------------------

SELECT *
From dbo.Hospital_Dataset
WHERE Department LIKE '%General%';

----------------------------------------
--Q24. Show patients whose Diagnosis starts with 'A'.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Diagnosis LIKE 'A%';

----------------------------------------
--Q25. Display patients whose Doctor_ID starts with 'DOC0'.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE Doctor_ID LIKE 'DOC0%';

----------------------------------------
--Q26.  Display all patients sorted by Age (Ascending).
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
ORDER BY AGE ASC;

----------------------------------------
--Q27.  Display all patients sorted by Age (Descending).
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
ORDER BY AGE DESC;

----------------------------------------
--Q28.  Display patients sorted by Billing_Amount from Highest to Lowest.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
ORDER BY Billing_Amount DESC;

----------------------------------------
--Q29.  Display patients sorted by Length_of_Stay (Highest first).
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
ORDER BY Length_of_Stay DESC;

----------------------------------------
--Q30.  Display Female patients sorted by Age (Descending).
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Gender = 'Female' 
ORDER BY Age DESC;

----------------------------------------
--Q31. Show female patients from Delhi whose Billing_Amount is greater than 80,000.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset
WHERE City = 'Delhi' 
AND GENDER = 'Female' 
AND Billing_Amount > 80000;

----------------------------------------
--Q32. Display diabetic patients who are not smokers and whose Recovery_Status is Improved.
----------------------------------------

SELECT * 
FROM dbo.Hospital_Dataset 
WHERE Diabetes = 1 
AND Smoker = 0 
AND Recovery_Status = 'Improved';

----------------------------------------
--Q33. Show patients admitted through Emergency whose Severity_Level is High and Length_of_Stay is greater than 7 days.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Admission_Type = 'Emergency' 
AND Severity_Level = 'High' 
AND Length_of_Stay > 7;

----------------------------------------
--Q34. Display patients whose City is Delhi, Noida, or Gurgaon using IN and sort them by Billing_Amount (Highest first).
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE City IN ('Delhi','Noida','Gurgaon') 
ORDER BY Billing_Amount DESC;

----------------------------------------
--Q35. Show patients whose Age is greater than 60 and whose Department is NOT Cardiology.
----------------------------------------

SELECT *
FROM dbo.Hospital_Dataset
WHERE Age > 60 
AND Department NOT IN ('Cardiology');

