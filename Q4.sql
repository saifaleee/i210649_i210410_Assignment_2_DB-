SELECT TOP(5) Employee.Emp_id, Shift_time, Salary, Maintainance_date, Hours_worked, air_no FROM EMPLOYEE, SERVICEE
 WHERE EMPLOYEE.Emp_id=SERVICEE.Emp_id ORDER BY SERVICEE.Hours_worked DESC