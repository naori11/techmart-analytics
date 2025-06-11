-- 4. Employee Management Report

	-- Employee count per department
	SELECT
		department AS Department,
        COUNT(employee_id) AS 'Employee Count'
	FROM employees
    GROUP BY department
    ORDER BY COUNT(employee_id) DESC;
    
	-- Show all employees with their managers
	SELECT 
		CONCAT(e1.first_name, ' ', e1.last_name) AS 'Employee Name', 
		e1.department AS Department, 
		e1.position AS Position, 
		CONCAT(e2.first_name, ' ' , e2.last_name) AS Manager
	FROM employees e1
	LEFT JOIN employees e2
	ON e1.manager_id = e2.employee_id;
    
    -- Highest and lowest salaries within the company
    SELECT CONCAT('$', FORMAT(MAX(salary), 2)) AS 'Highest Salary', CONCAT('$', FORMAT(MIN(salary), 2)) AS 'Lowest Salary' FROM employees;
    
    -- Average salary per department
    SELECT 
		department AS Department,
        CONCAT('$', FORMAT(AVG(SALARY), 2)) AS 'Average Salary'
	FROM employees
    GROUP BY department
    ORDER BY AVG(SALARY) DESC;
    
    -- Employees hired in 2022 and later
    SELECT 
		CONCAT(first_name, ' ', last_name) AS 'Employee Name',
        hire_date AS 'Date Hired'
	FROM employees
    WHERE DATE_FORMAT(hire_date, '%Y') >= '2022'
    ORDER BY hire_date;