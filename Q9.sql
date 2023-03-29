select CORP.Name, count(OWNS.Plane_id) as NO_OF_PLANES
from CORP left join OWNS 
on Corp_id= OWNS.Owner_id
group by CORP.Name 
order by NO_OF_PLANES DESC