SELECT * FROM EMP;

SELECT * FROM DEPT;

SELECT * FROM JOBHIST;


--1. Show the structure of the DEPT table. Select all the data from the Dept table.

SELECT 
*
FROM DEPT;

--2. Show the structure of the EMP table. Create a query to display the name, job, hiredate and employee number.

SELECT
* 
FROM EMP;

SELECT
ENAME,JOB,HIREDATE,EMPNO
FROM EMP;


--3. Display the employee name, job, monthly and annual salary with appropriate column titles.

SELECT
ENAME,JOB,SAL,SAL*12 AS 'ANNUAL_SAL'
FROM EMP;

--4. Display the name concatenated with the job, separated by a comma and space, and the name the column Employee and Title.

SELECT
ENAME  + '   , ' + JOB AS 'EMPLOYEE AND TITLE'
FROM EMP;


--5. Display unique jobs from the emp table.

SELECT 
DISTINCT JOB 
FROM EMP;

--6. Display the name and salary of employees earning more than 2850.

SELECT
ENAME,SAL
FROM EMP
WHERE SAL>2850;

--7. Create a query to display the employee name and department number for employee SMITH.

SELECT 
ENAME,DEPTNO
FROM EMP
WHERE ENAME='SMITH';

--8. Display the employee name, job and start date of employees hired between February 20, 1981 and May 1, 1981.
--Order the query in ascending order of start date.

SELECT EMP.ENAME,JOBHIST.JOB,JOBHIST.STARTDATE
FROM EMP JOIN JOBHIST
ON EMP.DEPTNO=JOBHIST.DEPTNO
WHERE STARTDATE BETWEEN '1981-02-20' AND '1981-05-01'
ORDER BY STARTDATE;


--9. Display the employee name and department number of all employees in departments 10 and 30 in alphabetical order by name.

SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN (10,30)
ORDER BY ENAME;

--10. Display the name and hiredate of every employee who was hired in 1982.

SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE BETWEEN ('1982-01-01') AND ('1982-12-31');

--11. Display the name and title of all employees who do not have a manager.



SELECT ENAME , JOB
FROM EMP 
WHERE MGR is NULL;

--12. Write a query to display the current date. Label the column Date.
SELECT GETDATE() AS DATE;

--13. Display the employees who were hired before their managers.

SELECT 
E.ENAME
FROM EMP E JOIN EMP M
ON E.MGR=M.EMPNO AND E.HIREDATE<M.HIREDATE;

--14. Determine the number of managers without listing them.


SELECT COUNT(ENAME)
FROM EMP
WHERE MGR IS NOT NULL;

--15. List employee details working in departments 20,30 & 40.
SELECT EMP.*
FROM EMP
WHERE DEPTNO IN(20,30,40);

--16. Display the employees who were hired before their managers.List of employees whose names start with T and end with R.
SELECT 
E.ENAME
FROM EMP E JOIN EMP M
ON E.MGR=M.EMPNO AND E.HIREDATE<M.HIREDATE AND E.ENAME LIKE 'T%R';

--17. List the name and hiredate of the employee in department 30.

SELECT 
ENAME ,HIREDATE
FROM EMP
WHERE DEPTNO='30';

--18. Display the hiredate in emp table formatted as ‘mm/dd/yy’.

SELECT ENAME,
FORMAT (HIREDATE,'MM/dd/yy') AS FORMATTEDDATE
FROM EMP;

--19. Retrieve the analysts’ record with the hiredate formatted as ‘the 3rd of Decemeber, 1984’.
SELECT ENAME,FORMAT (HIREDATE , 'dd MMMM, yy')AS FORMATTEDDATE
FROM EMP
WHERE JOB='ANALYST'

--20. List the names of all employees whose hiredate anniversary is in the month of December.

SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE  LIKE '_____12___';


--21. Give SQL command to find the average annual salary per job in each department.

SELECT AVG(SAL) AS AVG_SAL,JOB
FROM EMP
GROUP BY JOB

--22. In one query, count the number of people in department in 30 who receive a salary and the number of people who receive a commission.
 SELECT COUNT(SAL) AS SALARY,COUNT(COMM) AS COMMISSIIN
 FROM EMP
 WHERE DEPTNO='30';
 
 --23. Compute the average, minimum and maximum salaries of those groups of employees having the job as clerk or manager.

 SELECT AVG(SAL) AS AVERAGE,MIN(SAL) AS MINIMUM,MAX(SAL) AS MAXIMUM
 FROM EMP
 WHERE JOB IN('CLERK','MANAGER');

 --24. Display the department numbers of departments which have more than one clerk.

SELECT DEPTNO 
FROM EMP 
WHERE 1 < (SELECT COUNT(ENAME)
			FROM EMP
			WHERE JOB LIKE 'CLERK');

-- 25. Which employees earn less than 30 persent of the presidents salary.

SELECT ENAME
FROM EMP
WHERE SAL<((30/5000)*100);

--26. How many employees work in Chicago?
SELECT 
COUNT(EMP.ENAME)
FROM EMP JOIN DEPT
ON EMP.DEPTNO=DEPT.DEPTNO AND DEPT.LOC='CHICAGO';

--27. Which employees work in Chicago?
SELECT 
EMP.ENAME
FROM EMP JOIN DEPT
ON EMP.DEPTNO=DEPT.DEPTNO AND DEPT.LOC='CHICAGO';

--28. List the employees’ names and cities in which they work. Order the list by city.

SELECT 
EMP.ENAME,DEPT.LOC
FROM EMP JOIN DEPT
ON EMP.DEPTNO=DEPT.DEPTNO
ORDER BY DEPT.LOC;

--29. Find the number or different employees and number of departments.
SELECT COUNT(ENAME) AS EMPLOYEE,COUNT(JOB) AS DEPARTMENT
FROM EMP;

--30. Determine the average salaries of employees.

SELECT 
AVG(SAL) AS  AVERAGE
FROM EMP;

--31. Determine number of departments in the company.

SELECT 
COUNT(DEPTNO)
FROM EMP;

--32. List department number, department name, location and total commission paid and total salary of each department.

SELECT 
EMP.DEPTNO,EMP.JOB,DEPT.LOC,EMP.COMM,EMP.SAL
FROM EMP JOIN DEPT
ON EMP.DEPTNO=DEPT.DEPTNO
GROUP BY JOB;

--33. Display the employee name, job description and the salary multiplied by 12.
SELECT ENAME,JOB,SAL*12 AS 'SAL*12'
FROM EMP; 

--34. List the name, job and commission of employee who earn no commission.

SELECT ENAME, JOB , COMM
FROM EMP 
WHERE COMM IS NULL;

--35. List the name, job and commission of employee who earn commission.
SELECT ENAME, JOB , COMM
FROM EMP 
WHERE COMM IS NOT NULL;

--36. List the employee name, job description and salary where the third character of employee name is R.
SELECT ENAME ,JOB ,SAL
FROM EMP 
WHERE ENAME LIKE '__R%';

--37. List all the information from emp that are five characters long.

SELECT *
FROM EMP
WHERE LEN(ENAME) = 5 ;

--38. List all the information from emp that are not five characters long.
SELECT *
FROM EMP
WHERE LEN(ENAME) !=5;

--39. List names that have A and followed by R.

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%AR%';

--40. List all the details of employee from emp table where department number is equal to 30, order the list  by their salary.
SELECT *
FROM EMP
WHERE DEPTNO = '30'
ORDER BY SAL;

--41. Select name and salary of employees who earn between 1250 and 1600.

SELECT ENAME, SAL
FROM EMP
WHERE SAL BETWEEN '1250' AND '1600';

--42. List the name and salary of employees who earn less than 1250 or more than 1600.
SELECT ENAME, SAL
FROM EMP
WHERE SAL NOT BETWEEN '1250' AND '1600';

--43. Compute the total salary of all employees.

SELECT SUM(SAL) AS 'TOTAL SAL'
FROM EMP;

--44. Count the number of employees who have job titles(that is, the number of rows where JOB is not NULL).
SELECT ENAME 
FROM EMP
WHERE JOB IS NOT NULL;

--45. Compute the minimum and the maximum salary in the company.

SELECT MAX(SAL) AS 'MAXSAL',MIN(SAL) AS 'MINSAL'
FROM EMP;

--46. Write a query that produces all rows from the emp table with columns in  the following order with these as heading.
SELECT
EMPNO AS '.EMP #',ENAME AS ' EMPLOYEE', SAL AS 'SALARY', JOB, HIREDATE AS 'DATE OF HIRE', COMM AS ' COMMISSION', 
DEPTNO AS 'DEPARTMENT NUMBER', MGR AS 'MGR NO'
FROM EMP;

--47. What is the earliest date on which someone was hired, and what is the latest date on which someone was hired.

SELECT  MIN(HIREDATE) AS 'MINDATE',MAX(HIREDATE) AS 'MAXDATE'
FROM EMP;

--48. Count the number of employees working in department 10.
SELECT COUNT(EMPNO) AS ' EMP'
FROM EMP 
WHERE DEPTNO = '10';

--49. Write a query that will give you the names and jobs of all employees in New York with a commission above 10.
SELECT EMP.ENAME, EMP.JOB
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND LOC='NEW YORK' AND COMM>10;

--50. Format the hiredate with the following date formats.
SELECT FORMAT(HIREDATE,'dddd MMMM dd, yyyy') AS 'DAY MONTH DD, YYY',
		FORMAT(HIREDATE,'dy dd MMM yyyy') AS 'DY DD Mon YYYY',
		FORMAT(HIREDATE,'dddd dd\t\h MMMM, yyyy') AS 'Day ddth Month YYYY'
FROM EMP;