select PERSON.Name, PERSON.phone_no, HANGER.loc from OWNS
inner join PERSON on OWNS.Owner_id=PERSON.SSN 
inner join hanger on HANGER.loc=PERSON.address