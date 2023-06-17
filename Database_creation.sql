/* Creating a table in database */
CREATE TABLE CUSTOMER(
   Cust_name VARCHAR(30) NOT NULL,
   Cust_id INT NOT NULL,
   Age INT NOT NULL CHECK(Age>=10),
   Address VARCHAR (30) DEFAULT 'India',
   Salary DECIMAL (14, 2),       
   PRIMARY KEY (Cust_id)
);


/* Inserting data into the table */
INSERT INTO CUSTOMER(Cust_name,Cust_id,Age,Address,Salary)VALUES('Yash',1,24,'NZ',24000);
INSERT INTO CUSTOMER(Cust_name,Cust_id,Age,Address,Salary)VALUES('Abhinav',2,23,'Aus',23000.75);
 
/* Inserting multiple rows in a single insert statement. */
INSERT INTO CUSTOMER(Cust_name,Cust_id,Age,Address,Salary)VALUES('Hardik',4, 27, 'Bhopal', 8500.00 );

INSERT INTO CUSTOMER(Cust_name,Cust_id,Age,Address,Salary)VALUES('Abhinav',3,23,'Mum',23000.75);
INSERT INTO CUSTOMER(Cust_name,Cust_id,Age,Address,Salary)VALUES('Abhinav',5,23,'Delhi',23006.75);

/* Retrieve all the data from the database */
select * 
from CUSTOMER;

/* Adding a column by altering the table */
ALTER table CUSTOMER
Add (tel_no NUMBER(10) DEFAULT 9283847452 );

/* Dropping a particular column */
ALTER table CUSTOMER
DROP COLUMN tel_no;
