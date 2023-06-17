/* JOINS */

/* INNER JOIN = Returns rows when there is a match in both tables. */
SELECT Cust_name,amount
FROM CUSTOMER INNER JOIN ORDERS
ON customer.cust_id=orders.cust_id;

/* LEFT JOIN OR LEFT OUTER JOIN = Returns all the rows of the table on the left side of the join even if there are no matches on the right side of the join. */ 
SELECT Cust_name,amount
FROM CUSTOMER LEFT JOIN ORDERS
ON customer.cust_id=orders.cust_id
where amount>=3000;

/* RIGHT JOIN OR RIGHT OUTER JOIN = Returns all the rows of the table on the right side of the join even if there are no matches on the left side of the join. */ 
SELECT Cust_name,amount
FROM CUSTOMER RIGHT OUTER JOIN ORDERS
ON customer.cust_id=orders.cust_id
ORDER BY amount DESC;

/* FULL JOIN OR FULL OUTER JOIN = Result-set will contain all the rows from both tables. */
SELECT Cust_name,amount
FROM CUSTOMER FULL OUTER JOIN ORDERS
ON customer.cust_id=orders.cust_id;

/* CROSS JOIN = Combines each row of the first table with each row of second table. */
SELECT Cust_name,amount
FROM CUSTOMER CROSS JOIN ORDERS;

/* SELF JOIN = Combines a table with itself */
SELECT Cust_name
FROM CUSTOMER a, CUSTOMER b
WHERE a.salary < b.salary
ORDER BY salary;
