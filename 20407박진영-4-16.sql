--1������
SELECT * from DEPT;
--2������
SELECT * from emp;
SELECT job , EMPNO , ename, HiREDATE from emp;
--3��
SELECT DISTINCT ,job  from emp;
--4��
SELECT ename from emp where sal >=2850;
--5��
SELECT ename, empno from emp where Empno = 7566;
--6��
SELECT ename, sal from emp where  sal >= 1500 or sal>=2850;
--7��
select * from emp;
SELECT ename, job,hiredate from emp where hiredate >='81/02/20' and hiredate <= '81/05/01';
--8��
SELECT ename,job,hiredate from emp where deptno = 10; or deptno = 30;
--9��
SELECT ename,sal  "employee"from emp where sal >=1500;
--10��
SELECT ename,job from emp where job != 'MANAGER';
--11��
SELECT ename,sal,comm from emp where comm >= 1;
--12��
SELECT ename from emp Where substr(ename,3,1) = 'A';
--13��
SELECT ename from emp Where ename like '%L%L%' and deptno = 30;
--14��
SELECT ename,job,sal from emp where job in ('CLERK','ANALYST') and sal not in (1000,3000,5000);
SELECT ename,job,sal from emp where job in ('CLERK','ANALYST') and sal not in (1000,3000,5000);
--15��
SELECT EMPNO , ename , SAL , round(sal*1.15,0) "NEW Salary"  from emp; 
--16��
SELECT EMPNO , ename , SAL , round(sal*1.15,0) "NEW Salary", round(sal *0.15) from emp; 
--17��
SELECT initcap(ename)NAME , length(ename)LENENAME from emp;

--18��
SELECT ename ,nvl(comm,0) from emp;
SELECT ename , REPLace(comm,'aa')from emp;