/* OPERATORS */

/* AND and OR operator = Used to combine multiple conditions in an SQL statement for filtering the data */
SELECT Cust_name,Salary
FROM CUSTOMER
WHERE Age>24 and Salary<25000;

SELECT Cust_name,Salary
FROM CUSTOMER
WHERE (Age>24 or salary<24000) and Salary<22000;

/* LIKE Operator */
SELECT Cust_name
FROM CUSTOMER
WHERE Cust_name like 'H%';

/* IN Operator = Values present in this operator are to be taken into consideration */
SELECT Cust_name, Cust_id
from CUSTOMER
where Age IN (23,24,34);

/* BETWEEN Operator = Values present within (inclusive of both mentioned) the given values are taken into consideration */
SELECT Cust_name, Cust_id
FROM CUSTOMER
WHERE Age BETWEEN 24 AND 34;

/* UNION Operator = Combines data from multiple tables by eliminating duplicate rows. */
CREATE TABLE ORDERS(
  Ord_id INT UNIQUE,
  Cust_id INT FOREIGN KEY REFERENCES CUSTOMER(Cust_id),
  Amount DECIMAL (14, 2),       
  PRIMARY KEY (Ord_id)
);
INSERT INTO ORDERS(Ord_id, Cust_id, Amount)VALUES(1,2,3000);
INSERT INTO ORDERS(Ord_id, Cust_id, Amount)VALUES(2,2,2000);
INSERT INTO ORDERS(Ord_id, Cust_id, Amount)VALUES(3,1,2000);

select * from customer;
select * from ORDERS;

SELECT Cust_id
FROM CUSTOMER
UNION
SELECT Ord_id
FROM ORDERS;

/* INTERSECT Operator = Combines data that have something in common. */
SELECT Cust_id,salary
FROM CUSTOMER
INTERSECT
SELECT Ord_id,amount
FROM ORDERS;

/* UNION ALL Operator = Combines data from multiple tables without eliminating duplicate rows. */
SELECT Cust_id,salary
FROM CUSTOMER
UNION ALL
SELECT Ord_id,amount
FROM ORDERS;

