use training


declare @name varchar(100)
declare @dept varchar(50)
set @name='POOJA'
set @dept='training'
print @name+' '+@dept
--select @name as name

--select @dept as training



CREATE TABLE Csource
(
ID INT,
QTR INT,
YEAR INT,
SALES INT
)



INSERT INTO CSOURCE
VALUES(101,1,2021,80),
       (101,2,2021,90),
	   (101,3,2021,30)

SELECT * 
FROM Csource

SELECT *
FROM Dsource

select *
from Ifsource

--CASE STATEMENT

SELECT ID,
      CASE
	     WHEN QTR=1
		     THEN 'QTR1'
	     WHEN QTR=2
		     THEN 'QTR2'
		 WHEN QTR=3
		      THEN 'QTR3'
	  END AS QTR,
	  YEAR,
	  SALES
FROM Csource


--IF ELSE Statement

IF (SELECT DISTINCT YEAR FROM Csource)  =2022
BEGIN
  SELECT ID,
      CASE
	     WHEN QTR=1
		     THEN 'QTR1'
	     WHEN QTR=2
		     THEN 'QTR2'
		 WHEN QTR=3
		      THEN 'QTR3'
	  END AS QTR,
	  YEAR,
	  SALES
 FROM Csource
END

ELSE
 BEGIN
  print 'NOT THE YEAR'
 END
  
 --WHILE loop

 DECLARE @WHILE INT
 SET @WHILE=0
 WHILE @WHILE<=100
 BEGIN
    SET @WHILE=@WHILE+1
	PRINT @WHILE
 END



 
SELECT
empno,
ename,
   CASE
     WHEN job='CLERK'
	     THEN 'C'
	 WHEN JOB='SALESMAN'
	     THEN 'S'
	WHEN JOB='MANAGER'
	   THEN 'M'
	WHEN JOB='ANALYST'
	   THEN 'A'
	WHEN JOB='PRESIDENT'
	  THEN 'P'
	END AS JOB

FROM EMP

select * from emp