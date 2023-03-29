select AIRPLANE.Reg_no, AIRPLANE.Of_type from AIRPLANE
left join OWNS on AIRPLANE.Reg_no=OWNS.Plane_id
left join SERVICEE on AIRPLANE.Reg_no= SERVICEE.air_no
left join EMPLOYEE on SERVICEE.Emp_id=EMPLOYEE.Emp_id
where OWNS.Owner_id is NULL 
and  Shift_time='Day' and OWNS.owner_type='c'