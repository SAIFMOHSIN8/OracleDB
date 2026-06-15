-- Task 5

CREATE OR REPLACE PROCEDURE get_department_employees
(
    p_department_id IN NUMBER
)
AS
BEGIN
FOR emp IN
    (
        SELECT first_name || ' ' || last_name AS employee_name,
               salary
        FROM employees
        WHERE department_id = p_department_id
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            emp.employee_name || ' - ' || emp.salary
        );
END LOOP;
END;
/

EXEC get_department_employees(90);

-- Task 6

CREATE OR REPLACE PROCEDURE get_department_employees
(
    p_department_id IN NUMBER
)
AS
BEGIN
FOR emp IN
    (
        SELECT first_name || ' ' || last_name AS employee_name,
               salary
        FROM employees
        WHERE department_id = p_department_id
        AND salary >
        (
            SELECT AVG(salary)
            FROM employees
            WHERE department_id = p_department_id
        )
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            emp.employee_name || ' - ' || emp.salary
        );
END LOOP;
END;
/

EXEC get_department_employees(90);

-- Task 7

-- Because it allows the business logic to be stored and reused in one location.
-- This reduces code duplication, simplifies maintenance,
-- and ensures consistent results whenever the process is executed.