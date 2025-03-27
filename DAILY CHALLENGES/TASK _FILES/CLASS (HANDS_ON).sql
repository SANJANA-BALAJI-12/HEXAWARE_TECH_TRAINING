--TASK-1 :
/*CREATE TABLE INVENTORY (
    ITEM_ID INT NOT NULL UNIQUE,
    ITEM_NAME VARCHAR(30) NOT NULL,
    MANUFACTURE_YEAR INT CHECK (MANUFACTURE_YEAR > 2015)
);*/

--EXEC SP_HELPCONSTRAINT 'INVENTORY';
---------------------------------------------------------------------

--TASK-2:

/*CREATE TABLE EMPLOYEE (  
    EMP_ID VARCHAR(20),  
    EMP_NAME VARCHAR(20),  
    DEPARTMENT VARCHAR(20),  
    SALARY INT  
);*/

/*INSERT INTO EMPLOYEE VALUES  
('E101', 'Rahul', 'HR', 50000),  
('E101', 'Gopinath', 'HR', 60000);  */

--SELECT * FROM EMPLOYEE; 

/*WITH TEMP AS (  
    SELECT TOP(1) * FROM EMPLOYEE   
    WHERE EMP_NAME = 'Rahul'  
    ORDER BY EMP_ID  
)  
UPDATE TEMP SET EMP_ID = 'E101';*/  

--SELECT * FROM EMPLOYEE; 

------------------------------------------------------------------------

--TASK-3:

/*CREATE TABLE PRODUCTS (
    PROD_ID INT,
    PROD_NAME VARCHAR(25),
    CATEGORY VARCHAR(20)
);*/


/*ALTER TABLE PRODUCTS 
ADD CONSTRAINT chk_category CHECK (CATEGORY IN ('Electronics', 'Furniture', 'Clothing'));*/


/*ALTER TABLE PRODUCTS 
ALTER COLUMN CATEGORY VARCHAR(20) NOT NULL;*/

--EXEC SP_HELP PRODUCTS;



