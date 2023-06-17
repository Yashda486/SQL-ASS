/* CLAUSES */

/* Sorting the results = ORDER BY CLAUSE*/
SELECT Cust_name,Cust_id
FROM CUSTOMER
WHERE age>26
ORDER BY salary DESC;

/* To get the top n number of records we use = TOP Clause */
SELECT TOP 4 * 
FROM CUSTOMER 
ORDER BY AGE ASC;

/* To eliminate duplicate records and fetch only unique rows we use = DISTINCT Clause */
SELECT DISTINCT Salary,Address
FROM CUSTOMER
ORDER BY SALARY;
select * from CUSTOMER

/* Group By clause is used for arranging identical data into groups */
SELECT Cust_name, SUM(salary)
FROM CUSTOMER
GROUP BY Cust_name

/* Having clause is used with group by clause when you want to filter results from output of group by clause and generally with aggregate functions */
SELECT Cust_name, SUM(salary)
FROM CUSTOMER
GROUP BY Cust_name
HAVING SUM(Salary)>8501
ORDER BY Cust_name DESC;
