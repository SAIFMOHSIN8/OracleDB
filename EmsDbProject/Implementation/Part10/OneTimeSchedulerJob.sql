BEGIN
    DBMS_SCHEDULER.CREATE_JOB
(
        job_name => 'JOB_GREET_EMPLOYEES',

        job_type => 'PLSQL_BLOCK',

        job_action => '
        BEGIN

            INSERT INTO EMPLOYEE_LOG
            VALUES
            (
                SEQ_EMPLOYEE_LOG.NEXTVAL,
                NULL,
                ''PAYROLL INIT'',
                SYSDATE
            );

        END;
        ',

        start_date => SYSTIMESTAMP + INTERVAL '2' MINUTE,

        enabled => TRUE
    );
END;
/

-----------------------------------------------------------------------

SELECT job_name,
       enabled,
       state
FROM USER_SCHEDULER_JOBS
WHERE job_name = 'JOB_GREET_EMPLOYEES';

-----------------------------------------------------------------------

SELECT job_name,
       status,
       actual_start_date
FROM USER_SCHEDULER_JOB_RUN_DETAILS
WHERE job_name = 'JOB_GREET_EMPLOYEES';

-----------------------------------------------------------------------

SELECT *
FROM EMPLOYEE_LOG
ORDER BY log_ID DESC;