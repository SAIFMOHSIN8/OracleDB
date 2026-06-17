CREATE OR REPLACE FUNCTION FN_NET_SALARY
(
    p_emp_ID IN NUMBER
)
RETURN NUMBER
AS
    v_net_salary NUMBER;
BEGIN

SELECT (s.amount + s.bonus)
INTO v_net_salary
FROM EMPLOYEE e
         JOIN SALARY_BONUS s
              ON e.salary_ID = s.salary_ID
WHERE e.emp_ID = p_emp_ID;

RETURN v_net_salary;

END;
/

-----------------------------------

SELECT emp_ID,
       fname,
       lname,
       FN_NET_SALARY(emp_ID) AS net_salary
FROM EMPLOYEE
ORDER BY FN_NET_SALARY(emp_ID) DESC;