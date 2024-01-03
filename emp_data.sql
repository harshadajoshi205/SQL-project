use db301;
show databases;
show tables;

-- 1. Retrieve all records from the emp_data table : 
SELECT * FROM emp_data;

-- 2. List the first and last names of employees : 
SELECT Fname, Lname FROM emp_data;

-- 3. Count the number of male and female employees :
SELECT Gender, COUNT(*) AS count_gender
FROM emp_data
GROUP BY Gender;

-- 4. Find the average salary of all employees :
SELECT AVG(Salary) AS average_salary FROM emp_data;

-- 5. Retrieve employees earning more than $50,000 :
SELECT * FROM emp_data WHERE Salary > 50000;

-- 6. List employees and their respective locations :
SELECT Fname, Lname, Loc FROM emp_data;

-- 7. Get the highest salary among the employees :
SELECT MAX(Salary) AS highest_salary FROM emp_data;

-- 8. Find employees who do not have an assigned manager : 
SELECT * FROM emp_data WHERE Mgr_id IS NULL;

-- 9. Retrieve the email addresses of employees :
SELECT Email FROM emp_data;

-- 10. Count the number of employees in each department :
SELECT Dept_id, COUNT(*) AS count_employees
FROM emp_data
GROUP BY Dept_id;

-- 11. Get the details of the employee with the highest salary :
SELECT * FROM emp_data WHERE Salary = (SELECT MAX(Salary) FROM emp_data);

-- 12. List employees in descending order of their salaries :
SELECT * FROM emp_data ORDER BY Salary DESC;

-- 13. Retrieve employees with a specific location :
SELECT * FROM emp_data WHERE Loc = 'YourLocation';

-- 14. Calculate the total salary expenditure : 
SELECT SUM(Salary) AS total_salary_expenditure FROM emp_data;

-- 15. Find employees whose first name starts with 'A' :
SELECT * FROM emp_data WHERE Fname LIKE 'A%';

-- 16. List employees and their respective managers :
SELECT e.Fname, e.Lname, m.Fname AS Manager_FirstName, m.Lname AS Manager_LastName
FROM emp_data e
LEFT JOIN emp_data m ON e.Mgr_id = m.emp_id;

-- 17. Retrieve employees who belong to a specific department :
SELECT * FROM emp_data WHERE Dept_id = '30';

-- 18. Find the number of employees for each location : 
SELECT Loc, COUNT(*) AS count_employees
FROM emp_data
GROUP BY Loc;

-- 19. Get the average salary of male and female employees separately : 
SELECT Gender, AVG(Salary) AS average_salary
FROM emp_data
GROUP BY Gender;

-- 20. List employees with their full names concatenated : 
SELECT CONCAT(Fname, ' ', Lname) AS Full_Name FROM emp_data;




