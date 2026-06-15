-- Task 1

CREATE OR REPLACE VIEW vw_employee_salary AS
SELECT employee_id,
       first_name || ' ' || last_name AS employee_name,
       department_id,
       salary
FROM employees;

SELECT *
FROM vw_employee_salary;

-- Task 2

CREATE OR REPLACE VIEW vw_employee_details AS
SELECT e.first_name || ' ' || e.last_name AS employee_name,
       d.department_name,
       j.job_title,
       e.salary
FROM employees e
         JOIN departments d
              ON e.department_id = d.department_id
         JOIN jobs j
              ON e.job_id = j.job_id;

SELECT *
FROM vw_employee_details;

-- Task 3

SELECT *
FROM vw_employee_details
WHERE salary > 10000;

-- Task 4

-- Because Views provide controlled access to data and can hide sensitive information.
-- Views also simplify complex queries by presenting only the required information, making reporting easier and more secure.