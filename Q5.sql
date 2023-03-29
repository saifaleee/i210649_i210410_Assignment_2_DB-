select * from AIRPLANE, SERVICEE
where SERVICEE.air_no=AIRPLANE.Reg_no and (SERVICEE.Maintainance_date>='2023-03-16')