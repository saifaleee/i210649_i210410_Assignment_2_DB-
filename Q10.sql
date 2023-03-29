select PLANE_TYPE.Model_number,avg(SERVICEE.Hours_worked) as time_took
from SERVICEE 
left join PLANE_TYPE
on SERVICEE.air_no=PLANE_TYPE.Reg_no
group by  Model_number
order by time_took DESC