-- Sample SQL Project: Employee Management Database

-- Create table for departments
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Create table for employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert sample departments
INSERT INTO Departments VALUES 
(1, 'Human Resources'),
(2, 'IT'),
(3, 'Finance');

-- Insert sample employees
INSERT INTO Employees VALUES
(101, 'John', 'Doe', 2, 60000, '2021-06-15'),
(102, 'Jane', 'Smith', 1, 50000, '2020-03-10'),
(103, 'Mike', 'Johnson', 3, 70000, '2019-11-25');

-- Query: Get employees with salary above 55000
SELECT * FROM Employees WHERE Salary > 55000;

-- Query: Join employees with departments
SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
