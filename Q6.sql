select CORP.Name, CORP.phone_no FROM OWNS, CORP
	 WHERE OWNS.Pdate>'2023-02-25' AND (Corp_id=Owner_id)
	 union  --joins queries withoy dups
	 SELECT  PERSON.Name, PERSON.phone_no   FROM OWNS, PERSON
     WHERE OWNS.Pdate>'2023-02-25' AND (person.SSN=Owner_id)