SELECT 
CONCAT(CONCAT(first_name, ' '), last_name) FIO
FROM employee;

SELECT
    first_name,
    salary,
    round(salary, - 4)
FROM
    employee;
    
SELECT
    first_name,
    sysdate,
    hire_date,
    round(sysdate - hire_date) "kunlar farqi"
FROM employee;

SELECT 
first_name,
round(MONTHS_BETWEEN(SYSDATE, HIRE_DATE)) years_worked
FROM employee;

SELECT 
first_name,
TO_CHAR(hire_date, 'DY, DD-MON-YYYY') start_day
FROM employee;

SELECT 
first_name,
NVL(TO_CHAR (Manager_id), 'Manageri yo`q') MANAGER
FROM employee;

SELECT COUNT(*)
FROM employee;

SELECT
    department_id,
    SUM(salary)
FROM
    employee
GROUP BY
    department_id
ORDER BY
    SUM(salary);

SELECT 
    department_id,
    manager_id,
    SUM(salary)
FROM 
    employee
GROUP BY 
    department_id,
    manager_id
ORDER BY 
    department_id;
    
SELECT
    department_id,
    MAX(salary)
FROM
    employee
GROUP BY
    department_id
HAVING
    MAX(salary) > 110000;
    
SELECT * FROM employee;