select  PERSON.Name, PERSON.address from PERSON
join OWNS o1 on PERSON.SSN=o1.Owner_id
join AIRPLANE on AIRPLANE.Reg_no=o1.Plane_id
join PLANE_TYPE on PLANE_TYPE.Reg_no=AIRPLANE.Reg_no
join corp on Corp_id=o1.Owner_id
where o1.Pdate > '2023-02-1'