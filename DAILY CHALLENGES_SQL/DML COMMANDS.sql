--USE DMLCOMMANDS;
--GO

/*CREATE TABLE MY_EMPLOYEE (
    ID INT NOT NULL,
    LAST_NAME VARCHAR(25),
    FIRST_NAME VARCHAR(25),
    USERID VARCHAR(8),
    SALARY DECIMAL(9,2)
);*/

/*INSERT INTO MY_EMPLOYEE
VALUES (1, 'Patel', 'Ralph', 'rpatel', 895);*/

/*INSERT INTO MY_EMPLOYEE (ID, LAST_NAME, FIRST_NAME, USERID, SALARY)
VALUES (2, 'Dancs', 'Betty', 'bdancs', 860);*/

--SELECT * FROM MY_EMPLOYEE;



/*DECLARE @ID INT, @LAST_NAME VARCHAR(25), @FIRST_NAME VARCHAR(25), @SALARY DECIMAL(9,2);
SET @ID = 3;
SET @LAST_NAME = 'Smith';
SET @FIRST_NAME = 'John';
SET @SALARY = 920;

INSERT INTO MY_EMPLOYEE (ID, LAST_NAME, FIRST_NAME, USERID, SALARY)
VALUES (@ID, @LAST_NAME, @FIRST_NAME, LOWER(LEFT(@FIRST_NAME, 1) + LEFT(@LAST_NAME, 7)), @SALARY);*/


/*UPDATE MY_EMPLOYEE
SET LAST_NAME = 'Drexler'
WHERE ID = 3;

SELECT * FROM MY_EMPLOYEE;*/

/*UPDATE MY_EMPLOYEE
SET SALARY = 1000
WHERE SALARY < 900;

SELECT * FROM MY_EMPLOYEE;*/

/*DELETE FROM MY_EMPLOYEE
WHERE LAST_NAME = 'Dancs' AND FIRST_NAME = 'Betty';

SELECT * FROM MY_EMPLOYEE;*/


--TRUNCATE TABLE MY_EMPLOYEE;
