# i210649_i210410_Assignment_2_DB-
Assignment 2 of database course.

The given question has provided us with several entities, and we needed to create tables for each entity with its attributes. Here is an explanation of each table and how it was derived from the question:

---------------------------------------------
Table: AIRPLANE ( This Entity Stores Information Related To an Airplane such as when it was Registered and whats is its type )
Attributes:
Reg_no (numeric, 5 digits, primary key)
Of_type (varchar, 256)

---------------------------------------------

Table: HANGER ( This Entity Stores Information Related To an Hanger such as its hanger number, location and capacity )
Attributes:
Number (numeric, 3 digits, primary key)
loc (varchar, 256)
Capacity (numeric, 2 digits)

---------------------------------------------

Table: SERVICEE ( This Entity Stores Information Related To a Service Done against a Plane, it will include foreign keys from airplane and employee entities )
Attributes:
Work_code (numeric, 3 digits)
Maintainance_date (date)
Hours_worked (numeric, 2 digits)
air_no (numeric, 5 digits, primary key)
Emp_id (numeric, 5 digits)

---------------------------------------------

Table: EMPLOYEE ( This Entity Stores Information Related To a an Employee )
Attributes:
Emp_id (numeric, 5 digits, primary key)
Shift_time (varchar, 256)
Salary (numeric, 5 digits)

---------------------------------------------

Table: Pilot ( This Entity Stores Information Related To a Pilot )
Attributes:
Lic_num (numeric, 5 digits, primary key)
Restriction (numeric, 2 digits)
P_ssn (numeric, 10 digits, foreign key to PERSON table)

---------------------------------------------

Table: PLANE_TYPE ( This Entity Stores Information Related To a plane i.e its type )
Attributes:
Capacity (numeric, 5 digits)
Model_number (numeric, 5 digits)
Weight_kj (numeric, 7 digits)
Reg_no (numeric, 5 digits, foreign key to AIRPLANE table)

---------------------------------------------

Table: PERSON ( Super class enitity that stores general information about a person )
Attributes:
SSN (numeric, 10 digits, primary key)
phone_no (numeric, 11 digits)
address (varchar, 256)
Name (varchar, 256)

---------------------------------------------

Table: CORP ( This Entity Stores information about a Corporation )
Attributes:
Corp_id (numeric, 10 digits, primary key)
phone_no (numeric, 11 digits)
address (varchar, 256)
Name (varchar, 256)

---------------------------------------------

Table: OWNER ( Super Class Entity storing an id that is used against a plane that has been purchased )
Attributes:
id (numeric, 5 digits, primary key)

---------------------------------------------

Table: OWNS ( Relationship Entity )
Attributes:
Pdate (date)
Plane_id (numeric, 5 digits, foreign key to AIRPLANE table)
Owner_id (numeric, 10 digits, foreign key to OWNER table)

---------------------------------------------

Table: FLIES ( Relationship Entity )
Attributes:
Plane_Model_number (numeric, 5 digits, foreign key to PLANE_TYPE table)
Pilot_Lic_num (numeric, 5 digits, foreign key to PILOT table)

---------------------------------------------

These tables are derived from the given entities and attributes provided in the question. We can use these tables to store and retrieve data for various queries and operations.
The EERD was used as a guide to create the database, which was then populated with nearly 20 entries. During the database creation process, we acquired knowledge of various commands such as alter table, foreign key (xyz) references, drop table, etc.

--------------------------------------------- 
---------------------------------------------

Once we had created, implemented, and populated the database, we proceeded to compose queries that satisfied the given requirements. This process enlightened us on not only new SQL commands but also the constraints and limitations that queries may encounter.

SQL COMMANDS

1. In This Query which just simply check for the hours work column and check if its 0, which means it has not gone under any maintainance.

2. We are selecting the name and address of corporations who own planes with a capacity greater than 200. We achieve this by joining three tables: CORP, OWNS, and PLANE_TYPE. The conditions for the join are that the Corp_id matches the Owner_id and the PLANE_TYPE.Reg_no matches the OWNS.Plane_id.

3. We wrote a query to find the average salary of employees working in the night shift. The query uses the AVG() function to calculate the average of the 'SALARY' column in the 'EMPLOYEE' table. The 'WHERE' clause is used to filter the employees who work in the night shift. The result of the query is a single value representing the average salary of employees in the night shift. The column is renamed as 'avg_sal' using the 'AS' keyword for better readability.

4. In this Query we select the top 5 employees based on the number of hours worked on maintenance tasks, showing their ID, shift time, salary, maintenance date, hours worked, and the airplane they worked on. It joins the EMPLOYEE and SERVICEE tables on the employee ID and sorts the results in descending order by hours worked.

5. Here we simple compare the date column with a string "date" that is of the past week.

6. We select the name and phone number of corporations and people who own a plane after 2023-02-25, without duplicates. We use the "UNION" keyword to join the results of two queries. The first query selects the name and phone number of corporations who own a plane after the specified date, while the second query selects the name and phone number of individuals who own a plane after the specified date.

7. We used a query to find the number of planes each pilot is authorized to fly. We achieved this by joining the FLIES table with the PLANE_TYPE table on the Plane_Model_number and Model_number columns respectively. We then used the COUNT function to count the number of planes authorized for each Pilot_Lic_num and grouped the results by Pilot_Lic_num.

8. We simply used the top() func to filter out 1 value which is ordered by Capacity.

9. We used a left join between the CORP and OWNS tables based on the Corp_id and Owner_id fields. We then counted the number of planes each corporation owns and ordered the result by the number of planes in descending order.

10. We computed the average time taken for maintenance of each plane model by left joining the SERVICEE and PLANE_TYPE tables on the registration number. The result was then grouped by model number and sorted in descending order by time taken.

11. This query is divided into 2 parts that are later joined by the union keyword. The First one finds planes that require maintainance work and the second checks for owners who owns those planes

12. We join tables OWNS, PERSON, and HANGER to get the names, phone numbers, and locations of people who own a hangar.

13. We joined tables Person, Pilot, PLANE_TYPE, and SERVICEE, and selected names of pilots who have done Work_code containing '1' in the SERVICEE table. ( 1 indicates that plane is currently under Maintainance).

14. We select the names of people and the total hours worked, by joining multiple tables and filtering for a specific corporation, grouping by name and sorting by total hours worked.

15. We select the registration number and type of airplanes from AIRPLANE table that have no owners, are used during the day shift, and are owned by corporations, by performing a left join with OWNS table on AIRPLANE.Reg_no = OWNS.Plane_id where OWNS.Owner_id is NULL and joining with SERVICEE table on AIRPLANE.Reg_no = SERVICEE.air_no and EMPLOYEE table on SERVICEE.Emp_id = EMPLOYEE.Emp_id, then filtering the result based on the given conditions.

16. We can retrieve the names and addresses of the people who own airplanes that have a registration date after 2023-02-1 along with their corresponding corporations by joining the PERSON, OWNS, AIRPLANE, PLANE_TYPE, and CORP tables.

17. We are selecting the number of planes in each hanger by joining the AIRPLANE and HANGER tables on the hanger number. Then, we group the result by hanger number and count the number of planes in each group.

18. We are counting the total number of planes for each plane model number by joining the AIRPLANE and PLANE_TYPE tables on the plane registration number. The result is grouped by the plane model number.

19. We in SQL code count the number of times each airplane has been serviced by grouping the services by airplane ID and counting the number of distinct occurrences.

20. Here we calculate the average salary for each shift time (day or night) for all employees in the database using the AVG keyword and then group it by shift time.

21. We count the number of planes owned by each owner in the OWNS table and group the results by the owner ID to get the number of planes owned by each owner.

22. We are counting the number of distinct plane models authorized for each pilot based on their pilot license number, by joining the Pilot and Flies tables and grouping the results by the pilot license number.

23. The Rest of the queries that we made by ourselves are self-explanatory and easy to understand.
