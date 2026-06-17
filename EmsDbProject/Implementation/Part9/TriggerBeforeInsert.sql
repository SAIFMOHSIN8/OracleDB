
CREATE OR REPLACE TRIGGER TRG_EMP_ID
BEFORE INSERT ON EMPLOYEE
FOR EACH ROW
BEGIN
    IF :NEW.emp_ID IS NULL THEN
SELECT SEQ_EMPLOYEE.NEXTVAL
INTO :NEW.emp_ID
FROM DUAL;
END IF;
END;
/

-----------------------------------------

SHOW ERRORS TRIGGER TRG_EMP_ID;

-----------------------------------------

INSERT INTO EMPLOYEE
(
    fname,
    lname,
    gender,
    age,
    contact_add,
    emp_email,
    emp_pass,
    job_ID,
    salary_ID
)
VALUES
    (
        'Robert',
        'Walker',
        'M',
        34,
        'Chicago',
        'rwalker2@ems.com',
        'pass123',
        1,
        1
    );

COMMIT;

-------------------------------------------

SELECT emp_ID,
       fname,
       lname
FROM EMPLOYEE
WHERE emp_email = 'rwalker2@ems.com';