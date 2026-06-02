CREATE DATABASE TASK3

USE TASK3

CREATE TABLE Employees (
Employee_ID INT,
Age INT,
Attrition CHAR(3),
Business_Travel VARCHAR(20),
Department VARCHAR(30),
Distance_From_Home INT,
Education VARCHAR(15),
Environment_Satisfaction INT,
Gender VARCHAR(10),
Salary Float,
Job_Involvement INT,
Job_Level INT,
Job_Role VARCHAR(20),
Job_Satisfaction INT,
Marital_Status VARCHAR(30),
Number_of_Companies_Worked_previously INT,
Overtime CHAR(5),
Salary_Hike_in_percent INT,
Total_working_years_exprience INT,
Work_Life_Balance INT,
No_of_years_worked_at_current_company INT,
No_of_years_in_current_role INT,
Years_since_last_promotion INT
)

SELECT * FROM Employees

BULK INSERT Employees
FROM 'C:\Users\pranali\Downloads\HR_Attrition_dataset.csv'
WITH (
FIRSTROW=2,
FIELDTERMINATOR=',',
ROWTERMINATOR='\n'
);

SELECT * FROM Employees

SELECT Employee_ID, Department, Salary
FROM Employees;

SELECT * 
FROM Employees
WHERE Attrition = 'Yes' AND Salary > 50000;

SELECT Employee_ID, Salary
FROM Employees
ORDER BY Salary DESC;

SELECT Department, AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department;

WITH employee_info AS (
    SELECT Employee_ID, Age, Gender, Department, Job_Role
    FROM Employees
),
job_details AS (
    SELECT Employee_ID, Salary, Job_Level, Job_Satisfaction, Overtime
    FROM Employees
)
SELECT e.Employee_ID, e.Department, j.Salary
FROM employee_info e
INNER JOIN job_details j ON e.Employee_ID = j.Employee_ID;

SELECT e.Employee_ID,
       e.Department,
       e.Gender,
       j.Salary,
       j.Job_Satisfaction
FROM Employees e
LEFT JOIN Employees j
    ON e.Employee_ID = j.Employee_ID;

    SELECT e.Employee_ID,
       e.Department,
       e.Gender,
       j.Salary,
       j.Job_Satisfaction
FROM Employees e
RIGHT JOIN Employees j
    ON e.Employee_ID = j.Employee_ID;

    SELECT Employee_ID, Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary) FROM Employees
);

SELECT Department, SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department;

SELECT Job_Role, AVG(Job_Satisfaction) AS Avg_Satisfaction
FROM Employees
GROUP BY Job_Role;

CREATE INDEX idx_employee_id ON Employees(Employee_ID);
CREATE INDEX idx_department ON Employees(Department);
CREATE INDEX idx_salary ON Employees(Salary);
