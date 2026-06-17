BEGIN
    DBMS_SCHEDULER.CREATE_JOB
(
        job_name => 'JOB_DAILY_LEAVE_REPORT',

        job_type => 'PLSQL_BLOCK',

        job_action => '
        DECLARE
            v_leave_count NUMBER;
        BEGIN

            SELECT COUNT(*)
            INTO v_leave_count
            FROM LEAVE
            WHERE TRUNC(date) = TRUNC(SYSDATE);

            INSERT INTO EMPLOYEE_LOG
            (
                log_ID,
                emp_ID,
                action,
                log_timestamp
            )
            VALUES
            (
                SEQ_EMPLOYEE_LOG.NEXTVAL,
                NULL,
                ''Daily Leave Count: '' || v_leave_count,
                SYSDATE
            );

        END;
        ',

        repeat_interval => 'FREQ=DAILY;BYHOUR=7;BYMINUTE=0;BYSECOND=0',

        enabled => TRUE
    );
END;
/

----------------------------

SELECT job_name,
       enabled,
       state,
       repeat_interval
FROM USER_SCHEDULER_JOBS
WHERE job_name = 'JOB_DAILY_LEAVE_REPORT';