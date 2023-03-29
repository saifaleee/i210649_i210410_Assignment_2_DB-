  select Reg_no, AIRPLANE.Of_type from AIRPLANE, SERVICEE
  where AIRPLANE.Reg_no= SERVICEE.air_no 
  and  SERVICEE.Hours_worked=0;  -- using hrs worked as 0 which shows no maintainance has been done