SELECT TOP 10 *
FROM EMPLOYEE
WHERE Emp_Sal>10000

SELECT E.Emp_Id, E.Emp_FName, E.Emp_Addr1, E.Emp_City, E.Emp_Zip, D.Dept_Name, D.Dept_City
FROM Employee E
JOIN Emp_Department D ON E.Dept_Id = D.Dept_Id
WHERE D.Dept_City = 'Brentwood';

SELECT Emp_ID, Emp_Fname, Emp_Zip
FROM Employee
WHERE Dept_Id IN (SELECT Dept_Id FROM Emp_Department WHERE Dept_Name IN ('HR&Training', 'Compliance'))

SELECT SUM(Emp_Sal) AS Total_Salary, Dept_Name
FROM Employee
JOIN Emp_Department ON Employee.Dept_Id = Emp_Department.Dept_Id
GROUP BY Dept_Name

SELECT MAX(Emp_Sal) AS Second_Highest_Salary
FROM Employee
WHERE Emp_Sal < (SELECT MAX(Emp_Sal) FROM Employee);

EXEC sp_rename 'Person.Person_Name', 'P_Name', 'COLUMN';

SELECT E.Emp_Id, E.Emp_FName, E.Emp_LName
FROM Employee E
JOIN Emp_Dept D ON E.Dept_Id = D.Dept_Id
JOIN Location L ON D.Location_Id = L.Location_Id
WHERE L.Zip_Code = 88160;


SELECT E.Emp_Id, E.Emp_FName, D.Dept_Name
FROM Employee E
RIGHT JOIN Emp_Department D ON E.Dept_Id = D.Dept_Id;



SELECT E.Emp_Id, E.Emp_FName, D.Dept_Name
FROM Employee E
FULL OUTER JOIN Emp_Department D ON E.Dept_Id = D.Dept_Id;