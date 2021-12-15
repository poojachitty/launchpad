CREATE FUNCTION AddTwoNumbers(@NUM1 INT,@NUM2 INT)
returns int
AS
BEGIN
RETURN @NUM1+@NUM2
END

select dbo.AddTwoNumbers(1,2)

select ename,sal,comm,dbo.AddTwoNumbers(sal,comm) 'total salary' from emp



select * from emp

select dbo.annualsali(7369) 

create function annualsali(@empno int)
returns int
as
begin
return (select sal*12 from emp where empno=@empno)
end
go


create function GetAllEmpDetails()
returns table
as
return
(
   select * from emp
);

select dbo.<<>>()--sacalar
select * from GetAllEmpDetails()--table valued

create function GetAllEmpDetailsByDeptNo(@deptno int)
returns table
as
return
(
   select * from emp where deptno=@deptno
);

select * from GetAllEmpDetailsByDeptNo(10)





