USE [Airplane]
GO

CREATE TABLE AIRPLANE(
Reg_no NUMERIC (5) NOT NULL Primary Key,
Of_type VARCHAR (256),
Hanger_Number NUMERIC (3) NOT NULL,
)



CREATE TABLE HANGER(
Number NUMERIC (3) NOT NULL,
loc VARCHAR (256) NOT NULL,
Capacity NUMERIC (2)
)

CREATE TABLE SERVICEE(
Work_code NUMERIC (3) , -- what type of work is being done and if its under maintainance or not, 001 being worked on, 000 not being worked on
Maintainance_date DATE,
Hours_worked NUMERIC (2),
qualifictaion numeric,
air_no NUMERIC (5) NOT NULL primary key,-- adding airplane reg no to link with airplane 
Emp_id NUMERIC (5) NOT NULL -- adding employee id  to link with wmployee work 
)

CREATE TABLE EMPLOYEE(
Emp_id NUMERIC (5) NOT NULL,
ptype VARCHAR (256),
Shift_time VARCHAR (256) ,
Salary NUMERIC (5),
p_ssn Numeric(10)
)



CREATE TABLE Pilot(
Lic_num NUMERIC (5) NOT NULL,
Restriction NUMERIC (2) ,
P_ssn NUMERIC(10) NOT NULL, -- adding person ssn number so that pilot can be linked with person
)

CREATE TABLE PLANE_TYPE(
Capacity NUMERIC (5) NOT NULL,
Model_number NUMERIC (5) ,
Weight_kj NUMERIC (7),
Reg_no NUMERIC (5), -- plane registration number 
P_Lic_num NUMERIC (5) NOT NULL, -- pilot registration number 
)



CREATE TABLE PERSON (
  SSN NUMERIC(10) NOT NULL,
  phone_no NUMERIC(11),
  address varchar(256),
  Name varchar(256)
);

CREATE TABLE CORP (
  Corp_id NUMERIC(10) NOT NULL,
  phone_no NUMERIC(11),
  address varchar(256),
  Name varchar(256)
);

CREATE TABLE OWNER (
	id Numeric(5) not null Primary key
);

CREATE TABLE OWNS (
  Pdate Date NOT NULL,
  Plane_id NUMERIC(5) ,
  Owner_id NUMERIC(10) ,
  owner_type varchar(10),
  --FOREIGN KEY (Plane_id) REFERENCES AIRPLANE (Reg_no),
  --FOREIGN KEY (Owner_id) REFERENCES Owner (id)
);

CREATE TABLE FLIES (
Plane_Model_number NUMERIC (5)NOT NULL,-- of plane type ,
Pilot_Lic_num NUMERIC (5) NOT NULL,
);


/* ########################################## */
-- Insert data into FLIES table
INSERT INTO FLIES(Plane_Model_number, Pilot_Lic_num)
VALUES
(500, 12439),
(600,64318 ),
(100, 13151),
(200, 89701),
(300, 59122),
(400, 67213);


-- Insert data into AIRPLANE table
INSERT INTO AIRPLANE (Reg_no, Of_type,Hanger_Number)
VALUES (12345, 'Boeing 747',101),
(54321, 'Airbus A320',202),
(98765, 'Cessna 172',303),
(24680, 'Embraer E190',404),
(13579, 'Boeing 777',505),
(86420, 'Bombardier CRJ200',606);

-- Insert data into HANGER table
INSERT INTO HANGER (Number, loc, Capacity)
VALUES (101, 'Los Angeles', 10),
(202, 'New York', 15),
(303, 'Chicago', 8),
(404, 'Houston', 20),
(505, 'Dallas', 12),
(606, 'Miami', 6);

-- Insert data into SERVICEE table
INSERT INTO SERVICEE (Work_code, Maintainance_date, Hours_worked,air_no,Emp_id)
VALUES 
(321, '2022-02-01', 10,12345,1006), -- 1 at end of work_code means its being worked on currently, 2 for pending
(422, '2023-03-19', 5,54321,1005),
(930, '2023-03-24', 8,98765,1004),
(552, '2023-03-16', 12,24680,1003),
(320, '2022-06-05', 4,13579,1002),
(331, '0001-01-01', 0,86420,1001);



-- Insert data into OWNER table
INSERT INTO OWNER (id)
VALUES 
  (123),
  (456),
  (789),
  (101),
  (112),
  (131);


  -- Insert data into OWNS table
INSERT INTO OWNS (Pdate, Plane_id, Owner_id,owner_type)
VALUES 
  ('2022-01-01', 12345, 6789012345,'p'),
  ('2022-01-02', 23456, 5478901234,'p'),
  ('2022-01-03', 34567, 1234567890,'c' ),
  ('2022-01-04', 45678, 1234567890,'c'),
  ('2023-02-26', 13579, 1234567890,'c'),
  ('2023-02-28', 67890, 1234567890,'c'),
  ('2023-02-27', 67890, 2234567890,'p'),
  ('2023-03-12', 67890, 6489012345,'p'),
  ('2023-03-12', 86420, 4567890123,'c');

  -- Insert data into PERSON table
INSERT INTO PERSON (SSN, phone_no, address, Name)
VALUES (2234567890, 12345678901, 'Los Angeles', 'John Doe'),
(2445678901, 23456789012, 'New York', 'Jane Smith'),
(3256789012, 34567890123, 'Chicago', 'Robert Johnson'),
(4467890123, 45678901234, 'Houston', 'Mary Jones'),
(5478901234, 56789012345, 'Dallas', 'David Lee'),
(6489012345, 67890123456, 'Miami', 'Karen Kim');


-- Insert data into CORP table
INSERT INTO CORP (Corp_id, phone_no, address, Name)
VALUES (1234567890, 12345678901, 'Los Angeles', 'Acme Corp'),
(2345678901, 23456789012, 'Miami', 'Globex Corporation'),
(3456789012, 34567890123, 'New York', 'Initech'),
(4567890123, 45678901234, 'Dallas', 'Umbrella Corporation'),
(5678901234, 56789012345, 'Houston', 'Weyland-Yutani Corporation'),
(6789012345, 67890123456, 'Chicago', 'Wayne Enterprises');


-- Insert data into EMPLOYEE table
INSERT INTO EMPLOYEE (Emp_id, Shift_time, Salary,ptype,p_ssn)
VALUES (1001, 'Day', 5000,'Boeing 747',2234567890),
(1002, 'Night', 5500,'Airbus A320',2445678901),
(1003, 'Day', 4500,'Boeing 777',4467890123),
(1004, 'Night', 6000,'Bombardier CRJ200',6489012345),
(1005, 'Day', 5500,'Embraer E190',5478901234),
(1006, 'Night', 6500,'Cessna 172',3256789012)	;




-- Insert data into Pilot table
INSERT INTO Pilot (Lic_num, Restriction, P_ssn)
VALUES 
  (12439, 0, 2234567890),
  (64318, 1, 2445678901),
  (13151, 2, 3256789012),
  (89701, 3, 6489012345),
  (59122, 0, 6489010983),
  (67213, 1, 3274938274);

-- Insert data into PLANE_TYPE table
INSERT INTO PLANE_TYPE (Capacity, Model_number, Weight_kj, Reg_no, P_Lic_num)
VALUES 
  (150, 100, 50000,12345,12439),
  (200, 200, 75000,54321,64318),
  (100, 300, 30000,98765,13151),
  (300, 400, 100000,24680,89701),
  (250, 500, 85000,13579,59122),
  (180, 600, 45000,13579,67213);


 --Q3
  select Reg_no, AIRPLANE.Of_type from AIRPLANE, SERVICEE
  where AIRPLANE.Reg_no= SERVICEE.air_no 
  and  SERVICEE.Hours_worked=0;  -- using hrs worked as 0 which shows no maintainance has been done

--Q4
	SELECT CORP.Name, CORP.address FROM CORP, OWNS, PLANE_TYPE
	WHERE  PLANE_TYPE.Capacity > 200 AND Corp_id=Owner_id AND PLANE_TYPE.Reg_no=OWNS.Plane_id 

 --  Q5
 SELECT AVG(SALARY) AS avg_sal FROM EMPLOYEE
 WHERE Shift_time='Night';

 --Q6
 SELECT TOP(5) Employee.Emp_id, Shift_time, Salary, Maintainance_date, Hours_worked, air_no FROM EMPLOYEE, SERVICEE
 WHERE EMPLOYEE.Emp_id=SERVICEE.Emp_id ORDER BY SERVICEE.Hours_worked DESC

 --Q7
 select * from AIRPLANE, SERVICEE
where SERVICEE.air_no=AIRPLANE.Reg_no and (SERVICEE.Maintainance_date>='2023-03-16')

--Q8
     select CORP.Name, CORP.phone_no FROM OWNS, CORP
	 WHERE OWNS.Pdate>'2023-02-25' AND (Corp_id=Owner_id)
	 union  --joins queries withoy dups
	 SELECT  PERSON.Name, PERSON.phone_no   FROM OWNS, PERSON
     WHERE OWNS.Pdate>'2023-02-25' AND (person.SSN=Owner_id)
	
--Q9
SELECT FLIES.Pilot_Lic_num, COUNT(*) AS num_planes_authorized
FROM FLIES
INNER JOIN PLANE_TYPE ON FLIES.Plane_Model_number = PLANE_TYPE.Model_number
GROUP BY FLIES.Pilot_Lic_num;

--q10
select top(1) * from HANGER 
ORDER BY Capacity DESC;

--q11
select CORP.Name, count(OWNS.Plane_id) as NO_OF_PLANES
from CORP left join OWNS 
on Corp_id= OWNS.Owner_id
group by CORP.Name 
order by NO_OF_PLANES DESC

--q12
select PLANE_TYPE.Model_number,avg(SERVICEE.Hours_worked) as time_took
from SERVICEE 
left join PLANE_TYPE
on SERVICEE.air_no=PLANE_TYPE.Reg_no
group by  Model_number
order by time_took DESC

--q13
SELECT Pe.Name
FROM Person Pe
INNER JOIN EMPLOYEE on Pe.SSN = EMPLOYEE.p_ssn
INNER JOIN AIRPLANE pt ON EMPLOYEE.ptype = pt.Of_type
INNER JOIN SERVICEE s ON pt.Reg_no = s.air_no
WHERE s.Work_code LIKE '%2'
union
SELECT c.Name
FROM CORP c
inner join OWNS on OWNS.Owner_id= Corp_id 
inner join airplane on OWNS.Plane_id=AIRPLANE.Reg_no
inner join SERVICEE on SERVICEE.air_no=AIRPLANE.Reg_no
where SERVICEE.Maintainance_date='0001-01-01'

--q14
select PERSON.Name, PERSON.phone_no, HANGER.loc from OWNS
inner join PERSON on OWNS.Owner_id=PERSON.SSN 
inner join hanger on HANGER.loc=PERSON.address

--q15
SELECT Pe.Name
FROM Person Pe
INNER JOIN Pilot Pi ON Pe.SSN = Pi.P_ssn
INNER JOIN PLANE_TYPE pt ON Pi.Lic_num = pt.P_Lic_num
INNER JOIN SERVICEE s ON pt.Reg_no = s.air_no
WHERE s.Work_code LIKE '%1'
--q16
select PERSON.Name, sum(SERVICEE.Hours_worked) as total_hrs from PERSON
inner join EMPLOYEE on  EMPLOYEE.p_ssn=PERSON.SSN
inner join SERVICEE on SERVICEE.Emp_id= EMPLOYEE.Emp_id
inner join AIRPLANE on SERVICEE.air_no=AIRPLANE.Reg_no
inner join OWNS on AIRPLANE.Reg_no=OWNS.Plane_id
inner join CORP on owns.Owner_id=Corp_id
where CORP.Name='Acme Corp'
group by PERSON.Name
order by total_hrs

--q17
select AIRPLANE.Reg_no, AIRPLANE.Of_type from AIRPLANE
left join OWNS on AIRPLANE.Reg_no=OWNS.Plane_id
left join SERVICEE on AIRPLANE.Reg_no= SERVICEE.air_no
left join EMPLOYEE on SERVICEE.Emp_id=EMPLOYEE.Emp_id
where OWNS.Owner_id is NULL 
and  Shift_time='Day' and OWNS.owner_type='c'

--q18
select  PERSON.Name, PERSON.address from PERSON
join OWNS o1 on PERSON.SSN=o1.Owner_id
join AIRPLANE on AIRPLANE.Reg_no=o1.Plane_id
join PLANE_TYPE on PLANE_TYPE.Reg_no=AIRPLANE.Reg_no
join corp on Corp_id=o1.Owner_id
where o1.Pdate > '2023-02-1'

--q19
SELECT HANGER.Number, COUNT(*) AS TotalPlanes
FROM AIRPLANE
INNER JOIN HANGER ON AIRPLANE.Hanger_number = HANGER.Number
GROUP BY HANGER.Number;

--q20
Select PLANE_TYPE.Model_number, Count(*) As TotalPlanes
from AIRPLANE
INNER JOIN PLANE_TYPE ON Airplane.Reg_no =PLANE_TYPE.Reg_no
Group BY PLANE_TYPE.Model_number

--q21
SELECT S.air_no As Plane_id, COUNT( DISTINCT S.air_no) AS num_of_Times_serviced
FROM SERVICEE S
GROUP BY S.air_no;

--q22
SELECT shift_time, AVG(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY shift_time;

--q23
SELECT ow.Owner_id, COUNT( DISTINCT ow.Plane_id) AS num_of_planes_Owned
FROM OWNS ow
GROUP BY ow.Owner_id;

--q24
SELECT Pi.Lic_num, COUNT(DISTINCT f.Plane_Model_number) AS num_planes_authorized
FROM Pilot Pi
INNER JOIN FLIES f ON Pi.Lic_num = f.Pilot_Lic_num
GROUP BY Pi.Lic_num;

--q25

--#1 List all the Airplanes that currently need to be serviced ( work code like)
Select AIRPLANE.Reg_no, Airplane.Of_type
from Airplane
inner join SERVICEE on Airplane.Reg_no = SERVICEE.air_no
WHERE SERVICEE.Work_code LIKE '%2'


--#2 What are the top 3 hangers with the largest capacity ?
SELECT TOP 3 Number, Capacity
FROM HANGER
ORDER BY Capacity DESC;

--#3 Who are  the top 3 employees with the highest salary

SELECT TOP 3 Pe.Name, Salary
FROM Person Pe
INNER JOIN EMPLOYEE emp ON Pe.SSN = emp.P_ssn
ORDER BY SALARY Desc

--#4 List all the Employees who have a night shift and who are currently working on work code 321
Select *
from EMPLOYEE
Inner Join SERVICEE on SERVICEE.Emp_id = Employee.Emp_id
where Work_code = 321 AND Shift_time = 'Night'
