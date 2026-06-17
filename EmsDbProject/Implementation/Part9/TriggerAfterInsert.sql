CREATE TABLE EMPLOYEE_LOG
(
    log_ID NUMBER PRIMARY KEY,
    emp_ID NUMBER,
    action VARCHAR2(20),
    log_timestamp DATE
);

----------------------------------

CREATE SEQUENCE SEQ_EMPLOYEE_LOG
    START WITH 1
    INCREMENT BY 1;

----------------------------------

CREATE OR REPLACE TRIGGER TRG_EMP_WELCOME_LOG
AFTER INSERT ON EMPLOYEE
FOR EACH ROW
BEGIN

INSERT INTO EMPLOYEE_LOG
VALUES
    (
        SEQ_EMPLOYEE_LOG.NEXTVAL,
        :NEW.emp_ID,
        'NEW HIRE',
        SYSDATE
    );

END;
/

----------------------------------

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
    'John',
    'Smith',
    'M',
    30,
    'New York',
    'jsmith@ems.com',
    'pass201',
    1,
    1
);

COMMIT;

----------------------------------

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
        'Emily',
        'Johnson',
        'F',
        27,
        'London',
        'ejohnson@ems.com',
        'pass202',
        2,
        2
    );

COMMIT;

-------------------------------

SELECT *
FROM EMPLOYEE_LOG
ORDER BY log_ID;