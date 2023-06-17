SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

/* NULL FUNCTIONS = ISNULL(),COALESCE(),NULLIF(),IFNULL() */
SELECT ISNULL(Amount,3000) AS RESULT
FROM ORDERS;

SELECT Ord_id,Amount, COALESCE(Amount,Cust_id)AS Result
FROM ORDERS;

SELECT Cust_name,NULLIF(Age,Salary)
FROM CUSTOMER;

SELECT Ord_id,IFNULL(Amount,5000)
FROM ORDERS;

/* WILDCARDS : % or _ is used with LIKE Operator */
SELECT * 
FROM CUSTOMER
WHERE Cust_name like '_a%';

SELECT *
FROM ORDERS
WHERE AMOUNT IS NOT NULL;

/* STORED PROCEDURES = IT IS A GROUP OF PRECOMPILED SQL STATEMENTS THAT CAN BE USED AGAIN AND AGAIN */
CREATE PROCEDURE GetCustomerInfo
   @CutomerAge INT
AS
BEGIN
   SELECT * FROM CUSTOMER
   WHERE AGE = @CutomerAge
END

/* This statement will return all columns from the CUSTOMER table where the cutomer’s age is 23 */
EXEC GetCustomerInfo @CutomerAge = 23
/* This code will rename the procedure */
sp_rename 'GetCustomerInfo', 'newGetCustomerInfo';

/* This will drop the created procedure */
DROP PROCEDURE IF EXISTS GetCustomerInfo;