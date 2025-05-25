 
--21. Count total number of customers in Customers table. 
SELECT COUNT(*) AS TotalCustomers FROM CUSTOMER;

--22. Average account balance from Accounts table. 
SELECT AVG(Balance) AS AvgBalance FROM ACCOUNT;

--23. Count accounts per branch grouped by Branch_ID. 
SELECT E.Branch_ID, COUNT(*) AS AccountCount
FROM ACCOUNT A
JOIN CUSTOMER C ON A.Customer_ID = C.Customer_ID
JOIN EMPLOYEE_CUSTOMER_INTERACTION I ON I.Customer_ID = C.Customer_ID
JOIN EMPLOYEE E ON E.Employee_ID = I.Employee_ID
GROUP BY E.Branch_ID;

--24. Sum loan amounts per customer from Loans grouped by Customer_ID. 
SELECT Customer_ID, SUM(Amount) AS TotalLoan
FROM LOAN
GROUP BY Customer_ID;

--25.  List customers with total loan > 200000 grouped by Customer_ID. 
SELECT Customer_ID, SUM(Amount) AS TotalLoan
FROM LOAN
GROUP BY Customer_ID
HAVING SUM(Amount) > 200000;
