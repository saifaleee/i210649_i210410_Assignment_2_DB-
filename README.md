# i210649_i210410_Assignment_2_DB-
Assignment 2 of database course.

The given question has provided us with several entities, and we needed to create tables for each entity with its attributes. Here is an explanation of each table and how it was derived from the question:

---------------------------------------------
Table: AIRPLANE
Attributes:
Reg_no (numeric, 5 digits, primary key)
Of_type (varchar, 256)

---------------------------------------------

Table: HANGER
Attributes:
Number (numeric, 3 digits, primary key)
loc (varchar, 256)
Capacity (numeric, 2 digits)

---------------------------------------------

Table: SERVICEE
Attributes:
Work_code (numeric, 3 digits)
Maintainance_date (date)
Hours_worked (numeric, 2 digits)
air_no (numeric, 5 digits, primary key)
Emp_id (numeric, 5 digits)

---------------------------------------------

Table: EMPLOYEE
Attributes:
Emp_id (numeric, 5 digits, primary key)
Shift_time (varchar, 256)
Salary (numeric, 5 digits)

---------------------------------------------

Table: Pilot
Attributes:
Lic_num (numeric, 5 digits, primary key)
Restriction (numeric, 2 digits)
P_ssn (numeric, 10 digits, foreign key to PERSON table)

---------------------------------------------

Table: PLANE_TYPE
Attributes:
Capacity (numeric, 5 digits)
Model_number (numeric, 5 digits)
Weight_kj (numeric, 7 digits)
Reg_no (numeric, 5 digits, foreign key to AIRPLANE table)

---------------------------------------------

Table: PERSON
Attributes:
SSN (numeric, 10 digits, primary key)
phone_no (numeric, 11 digits)
address (varchar, 256)
Name (varchar, 256)

---------------------------------------------

Table: CORP
Attributes:
Corp_id (numeric, 10 digits, primary key)
phone_no (numeric, 11 digits)
address (varchar, 256)
Name (varchar, 256)

---------------------------------------------

Table: OWNER
Attributes:
id (numeric, 5 digits, primary key)

---------------------------------------------

Table: OWNS
Attributes:
Pdate (date)
Plane_id (numeric, 5 digits, foreign key to AIRPLANE table)
Owner_id (numeric, 10 digits, foreign key to OWNER table)

---------------------------------------------

Table: FLIES
Attributes:
Plane_Model_number (numeric, 5 digits, foreign key to PLANE_TYPE table)
Pilot_Lic_num (numeric, 5 digits, foreign key to PILOT table)

---------------------------------------------

These tables are derived from the given entities and attributes provided in the question. We can use these tables to store and retrieve data for various queries and operations.
