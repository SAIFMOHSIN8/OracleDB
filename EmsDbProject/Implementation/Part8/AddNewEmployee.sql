CREATE OR REPLACE PROCEDURE SP_ADD_EMPLOYEE
(
    p_fname       IN VARCHAR2,
    p_lname       IN VARCHAR2,
    p_gender      IN CHAR,
    p_age         IN NUMBER,
    p_contact_add IN VARCHAR2,
    p_emp_email   IN VARCHAR2,
    p_emp_pass    IN VARCHAR2,
    p_job_ID      IN NUMBER,
    p_salary_ID   IN NUMBER
)
AS
    v_count NUMBER;
BEGIN

    -- Check for duplicate email
    SELECT COUNT(*)
    INTO v_count
    FROM EMPLOYEE
    WHERE emp_email = p_emp_email;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Email already exists.'
        );
    END IF;

    -- Insert employee
    INSERT INTO EMPLOYEE
    VALUES
    (
        seq_employee.NEXTVAL,
        p_fname,
        p_lname,
        p_gender,
        p_age,
        p_contact_add,
        p_emp_email,
        p_emp_pass,
        p_job_ID,
        p_salary_ID
    );

    DBMS_OUTPUT.PUT_LINE('Employee added successfully.');

END;
/

--- Enable DBMS Output before proceding

SET SERVEROUTPUT ON;

BEGIN
    SP_ADD_EMPLOYEE
    (
        'Sarah',
        'Parker',
        'F',
        32,
        'London',
        'sparker@ems.com',
        'pass111',
        1,
        1
    );
END;
/

-----------------------------------

BEGIN
    SP_ADD_EMPLOYEE
    (
        'Jennifer',
        'Stone',
        'F',
        29,
        'Berlin',
        'sparker@ems.com',
        'pass112',
        1,
        1
    );
END;
/