CREATE DATABASE employeedb;
USE employeedb;

-- Creating employees table
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Designation VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

-- Inserting records in Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Designation, Email, City, Salary, HireDate) VALUES
(101, 'Raj', 'Mehta', 'IT', 'Software Engineer', 'raj.mehta@example.com', 'Mumbai', 75000.00, '2021-06-15'),
(102, 'Priya', 'Sharma', 'HR', 'HR Manager', 'priya.sharma@example.com', 'Delhi', 68000.00, '2020-03-10'),
(103, 'Amit', 'Verma', 'Sales', 'Sales Executive', 'amit.verma@example.com', 'Pune', 52000.00, '2022-01-20'),
(104, 'Sneha', 'Kapoor', 'IT', 'Data Analyst', 'sneha.kapoor@example.com', 'Bangalore', 70000.00, '2021-11-25'),
(105, 'John', 'Smith', 'Marketing', 'Marketing Lead', 'john.smith@example.com', 'New York', 88000.00, '2019-07-01'),
(106, 'Anjali', 'Rao', 'IT', 'Software Engineer', 'anjali.rao@example.com', 'Hyderabad', 74000.00, '2023-02-14'),
(107, 'David', 'Lee', 'Finance', 'Accountant', 'david.lee@example.com', 'Chicago', 60000.00, '2020-08-10'),
(108, 'Riya', 'Sen', 'Sales', 'Sales Manager', 'riya.sen@example.com', 'Kolkata', 67000.00, '2021-12-05'),
(109, 'Megha', 'Gupta', 'HR', 'Recruiter', 'megha.gupta@example.com', 'Chandigarh', 50000.00, '2022-05-18'),
(110, 'Vikram', 'Desai', 'IT', 'DevOps Engineer', 'vikram.desai@example.com', 'Ahmedabad', 78000.00, '2023-06-01');

SELECT * FROM Employees;
-- SELECT queries
-- Find all employees who work in the IT department.
SELECT * FROM Employees
WHERE Department = 'IT';
-- List employees who earn more than ₹70,000.
SELECT * FROM Employees 
WHERE Salary > 70000;
-- Get employees hired after January 1, 2022.
SELECT * FROM Employees 
WHERE HireDate > '2022-01-01';
-- Show employees who live in Mumbai or Delhi.
SELECT * FROM Employees
WHERE City IN ('Mumbai','Delhi');

SELECT * FROM Employees
WHERE City = 'Mumbai' OR City = 'Delhi';
-- Find employees not working in the HR department.
SELECT * FROM Employees
Where Department <> 'HR';
-- Retrieve employees who have a salary between ₹60,000 and ₹80,000.
SELECT EmployeeID, CONCAT(FirstName,' ',LastName) AS FullName, Department, Salary FROM Employees
WHERE Salary BETWEEN 60000 AND 80000;
-- Find employees whose first name starts with the letter 'A'.
SELECT * FROM Employees
WHERE FirstName LIKE 'A%';
-- List employees whose last name ends with 'a'.
SELECT * FROM Employees
WHERE LastName LIKE '%a';
-- Get employees whose first or last name contains the letter 'e'.
SELECT FirstName, LastName FROM Employees
WHERE FirstName LIKE '%e%' OR LastName LIKE '%e%';
-- Find employees whose email ends with "@example.com".
SELECT * FROM Employees
WHERE Email LIKE '%@example.com';
-- Show all employees sorted by salary in descending order.
SELECT * FROM Employees
ORDER BY Salary DESC;
-- Display employees sorted alphabetically by city name.
SELECT FirstName, LastName, City FROM Employees
ORDER BY City;
-- Order employees by department and then by salary within each department.
SELECT * FROM Employees
ORDER BY Department ASC, Salary DESC;
-- Get the top 5 highest-paid employees.
SELECT * FROM Employees
ORDER BY Salary DESC LIMIT 5;
-- Show the 3 most recently hired employees.
SELECT * FROM Employees
ORDER BY HireDate DESC LIMIT 3;
-- 
