/* Display all the columns and their data in the table */
SELECT * 
FROM CUSTOMER;

/* Condition is applied using where clause */
SELECT Cust_name, Cust_id 
FROM CUSTOMER
WHERE age>=24;

/* Aliasing a column */
SELECT Cust_name AS Name 
FROM CUSTOMER;

/* Creating a new table using existing table */
SELECT *
INTO CUSTOMER_BACKUP 
FROM CUSTOMER;

INSERT INTO CUSTOMER_BACKUP
SELECT * FROM CUSTOMER;

/* Modifying or updating the values of rows = UPDATE COMMAND*/
UPDATE CUSTOMER
SET customer.age=34, address='India'
WHERE Cust_id=1;

/* Removes all the rows from the table = DELETE COMMAND */
DELETE FROM CUSTOMER;

DELETE FROM CUSTOMER
WHERE Address = 'Mum';

/* Views = Sort of a virtual table in SQL */
CREATE VIEW CUSTOMER_VIEW AS
SELECT Cust_name, Age
FROM  CUSTOMER
WHERE Age >=23;

/* Updating the view table */
UPDATE CUSTOMER_VIEW 
SET AGE = 35 
WHERE Cust_name = 'Yash';

DROP VIEW CUSTOMER_VIEW;



