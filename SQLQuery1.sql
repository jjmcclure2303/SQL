--Create Database
CREATE DATABASE GitHub;

--Use Database
USE GitHub;

--Create the Employee
CREATE Table EMPLOYEE (
	Employee_ID INT PRIMARY KEY,
	Emp_FName VARCHAR (50),
	Emp_LName VARCHAR (50),
	Empl_Sal DECIMAL (10, 2),
	Dept_ID INT,
	Emp_Addr1 VARCHAR (100),
	Emp_City VARCHAR (50),
	Emp_Zip VARCHAR (10)
);

	--Create the Department table
CREATE TABLE EMP_DEPARTMENT (
	Dept_ID INT PRIMARY KEY,
	Dept_Name VARCHAR(50),
	Dept_City VARCHAR(50),
);

--Create the Employee Details Table
CREATE TABLE Employee_Details (
	Emp_ID INT,
	Location_ID INT,
	FOREIGN KEY (Emp_ID) REFERENCES Employee(Employee_ID)
);

--Create the Location Details Table
CREATE TABLE Location_Details (
	Location_ID INT PRIMARY KEY,
	Zip_Code VARCHAR (10)
);
