

--1.  Count total number of employees in the Employees table. 
SELECT count (*) AS Total_Employees
from Employee;

--2.  Calculate average salary from the Salaries table. 
SELECT AVG(Salary) AS Average_Salary
from Employee;

--3.  Count employees in each department using Employees grouped by Dept_ID. 
SELECT E.Dno, COUNT(*) AS EmployeeCount
FROM Employee E
JOIN Departments D ON E.Dno = D.Dnum
GROUP BY E.Dno;

--4.  Find total salary per department by joining Employees and Salaries. 
SELECT D.Dnum , SUM(E.Salary) AS TotalSalary
FROM Employee E
JOIN Departments D ON E.Ssn = D.MGRSSN
GROUP BY D.Dnum;

--5. Show departments (Dept_ID) having more than 5 employees with their counts.

SELECT Departments.Dnum, COUNT(*) AS EmployeeCount
FROM Employee
JOIN Departments ON Employee.Dno = Departments.Dnum
GROUP BY Departments.Dnum
HAVING COUNT(*) > 5;



