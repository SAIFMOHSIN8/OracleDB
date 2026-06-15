-- Task 7

-------------------------------------------------
-- Task 8

CREATE TABLE salary_audit
(
    employee_id NUMBER,
    old_salary NUMBER,
    new_salary NUMBER,
    update_date DATE
);

-------------------------------------------------
-- Task 9

CREATE OR REPLACE TRIGGER salary_audit_trigger
AFTER UPDATE OF salary
      ON employees
          FOR EACH ROW
BEGIN
INSERT INTO salary_audit
(
    employee_id,
    old_salary,
    new_salary,
    update_date
)
VALUES
    (
        :OLD.employee_id,
        :OLD.salary,
        :NEW.salary,
        SYSDATE
    );
END;
/

-------------------------------------------------
-- Task 10

SELECT employee_id,
       first_name,
       salary
FROM employees
WHERE employee_id = 100;

UPDATE employees
SET salary = salary + 1000
WHERE employee_id = 100;

COMMIT;

-------------------------------------------------
-- Task 11

ALTER TABLE salary_audit
    ADD
    (
    username VARCHAR2(50),
    update_timestamp TIMESTAMP
);

CREATE OR REPLACE TRIGGER trg_salary_audit
AFTER UPDATE OF salary
      ON employees
          FOR EACH ROW
BEGIN
INSERT INTO salary_audit
(
    employee_id,
    old_salary,
    new_salary,
    update_date,
    username,
    update_timestamp
)
VALUES
    (
        :OLD.employee_id,
        :OLD.salary,
        :NEW.salary,
        SYSDATE,
        USER,
        SYSTIMESTAMP
    );
END;
/

UPDATE employees
SET salary = salary + 500
WHERE employee_id = 100;

COMMIT;

SELECT *
FROM salary_audit;

--------------------------------------------------------------------