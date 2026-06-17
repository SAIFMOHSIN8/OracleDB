-- CREATING THE TABLES --

CREATE TABLE JOB_DEPARTMENT (
                                job_ID NUMBER PRIMARY KEY,
                                job_dept VARCHAR2(15) NOT NULL,
                                name VARCHAR2(25) NOT NULL,
                                description VARCHAR2(40),
                                salary_range VARCHAR2(15)
);

CREATE TABLE SALARY_BONUS (
                              salary_ID NUMBER PRIMARY KEY,
                              amount NUMBER(10,2) NOT NULL,
                              annual NUMBER(10,2),
                              bonus NUMBER(10,2),
                              job_ID NUMBER NOT NULL,

                              CONSTRAINT chk_salary_amount
                                  CHECK (amount > 0),

                              CONSTRAINT fk_salary_department
                                  FOREIGN KEY (job_ID)
                                      REFERENCES JOB_DEPARTMENT(job_ID)
);

CREATE TABLE EMPLOYEE (
                          emp_ID NUMBER PRIMARY KEY,
                          fname VARCHAR2(15) NOT NULL,
                          lname VARCHAR2(15) NOT NULL,
                          gender CHAR(1) NOT NULL,
                          age NUMBER(2),
                          contact_add VARCHAR2(30),
                          emp_email VARCHAR2(30),
                          emp_pass VARCHAR2(25),
                          job_ID NUMBER NOT NULL,
                          salary_ID NUMBER NOT NULL,

                          CONSTRAINT chk_employee_gender
                              CHECK (gender IN ('M','F')),

                          CONSTRAINT fk_employee_department
                              FOREIGN KEY (job_ID)
                                  REFERENCES JOB_DEPARTMENT(job_ID),

                          CONSTRAINT fk_employee_salary
                              FOREIGN KEY (salary_ID)
                                  REFERENCES SALARY_BONUS(salary_ID)
);

CREATE TABLE QUALIFICATION (
                               qual_ID NUMBER PRIMARY KEY,
                               position VARCHAR2(25) NOT NULL,
                               requirements VARCHAR2(40),
                               date_in DATE,
                               emp_ID NUMBER NOT NULL,

                               CONSTRAINT fk_qualification_employee
                                   FOREIGN KEY (emp_ID)
                                       REFERENCES EMPLOYEE(emp_ID)
);

CREATE TABLE LEAVE (
                       leave_ID NUMBER PRIMARY KEY,
                       leave_date DATE NOT NULL,
                       reason VARCHAR2(30),
                       emp_ID NUMBER NOT NULL,

                       CONSTRAINT fk_leave_employee
                           FOREIGN KEY (emp_ID)
                               REFERENCES EMPLOYEE(emp_ID)
);

CREATE TABLE PAYROLL (
                         payroll_ID NUMBER PRIMARY KEY,
                         payroll_date DATE NOT NULL,
                         report VARCHAR2(30),
                         total_amount NUMBER(10,2),

                         emp_ID NUMBER NOT NULL,
                         job_ID NUMBER NOT NULL,
                         salary_ID NUMBER NOT NULL,
                         leave_ID NUMBER,

                         CONSTRAINT fk_payroll_employee
                             FOREIGN KEY (emp_ID)
                                 REFERENCES EMPLOYEE(emp_ID),

                         CONSTRAINT fk_payroll_department
                             FOREIGN KEY (job_ID)
                                 REFERENCES JOB_DEPARTMENT(job_ID),

                         CONSTRAINT fk_payroll_salary
                             FOREIGN KEY (salary_ID)
                                 REFERENCES SALARY_BONUS(salary_ID),

                         CONSTRAINT fk_payroll_leave
                             FOREIGN KEY (leave_ID)
                                 REFERENCES LEAVE(leave_ID)
);


-- CREATING SEQUENCES --

CREATE SEQUENCE seq_job_department
    START WITH 1
    INCREMENT BY 1;

CREATE SEQUENCE seq_salary_bonus
    START WITH 1
    INCREMENT BY 1;

CREATE SEQUENCE seq_employee
    START WITH 1
    INCREMENT BY 1;

CREATE SEQUENCE seq_qualification
    START WITH 1
    INCREMENT BY 1;

CREATE SEQUENCE seq_leave
    START WITH 1
    INCREMENT BY 1;

CREATE SEQUENCE seq_payroll
    START WITH 1
    INCREMENT BY 1;

-- TABLE & SEQUENCE CHECK --

SELECT table_name
FROM user_tables
ORDER BY table_name;

SELECT sequence_name
FROM user_sequences
ORDER BY sequence_name;
