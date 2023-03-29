SELECT shift_time, AVG(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY shift_time;