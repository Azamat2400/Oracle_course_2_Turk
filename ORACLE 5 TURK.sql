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

--TRIGGERs
ALTER TRIGGER secure_employee COMPILE;

ALTER TRIGGER secure_employee ENABLE;

ALTER TRIGGER secure_employee DISABLE;

ALTER TABLE employee DISABLE ALL TRIGGERS;

--PROCEDURE
SELECT
    first_name,
    salary
FROM employee
WHERE employee_id = 105;

--BEGIN
--    RAISE_AMOUNT(105, 1);
--END;

SELECT
    first_name,
    salary
FROM employee
WHERE employee_id = 105;

--FUNCTION
SELECT 
    employee_id,
    first_name,
    salary,
    GET_SAL(employee_id, 1.4) "Proposed Salary"
FROM employee;


--YOUTUBE

--SYNONYM
CREATE SYNONYM users
FOR Customer;

SELECT * FROM customer;

SELECT * FROM users;

INSERT INTO Users VALUES (11, 'Cihan', 'O`zhan', 'TK', 'Cihan@gmail.com');

SELECT * FROM customer
WHERE customer_id = 11;

CREATE PUBLIC SYNONYM UserP
FOR Customer;

DROP SYNONYM users;

--VIEW
CREATE OR REPLACE VIEW Complex_VIEW
( Name, MinSal, MaxSal, AvgSal )
AS
SELECT
    d.department_name,
    MIN(e.salary),
    MAX(e.salary),
    AVG(e.salary)
FROM employee e,department d
WHERE e.department_id = d.department_id
GROUP BY department_name;

SELECT * FROM Complex_VIEW;

Drop View complex_view;

--SEQUENCE
CREATE SEQUENCE Customer_Seq
INCREMENT BY 5
START WITH 20
MAXVALUE 9999;

INSERT INTO Customer VALUES(customer_seq.nextval, 'Ali', 'Candan', 'TK', 'Candan@gmail.com');
INSERT INTO Customer VALUES(customer_seq.nextval, 'Elif', 'Eylul', 'TK', 'Eylul@gmail.com');
INSERT INTO Customer VALUES(customer_seq.nextval, 'Mehmet', 'Cakir', 'TK', 'Candan@gmail.com');

SELECT * FROM Customer
WHERE Customer_id >= 20;

SELECT Customer_Seq.CURRVAL
FROM dual;

SELECT * FROM User_Sequences;

SELECT * FROM All_Sequences;

DROP SEQUENCE Customer_Seq;