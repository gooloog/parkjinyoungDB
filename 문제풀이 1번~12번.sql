--1번문제
SELECT * from DEPT;
--2번문제
SELECT * from emp;
SELECT job , EMPNO , ename, HiREDATE from emp;
--3번
SELECT DISTINCT ,job  from emp;
--4번
SELECT ename from emp where sal >=2850;
--5번
SELECT ename, empno from emp where Empno = 7566;
--6번
SELECT ename, sal from emp where  sal >= 1500 or sal>=2850;
--7번
select * from emp;
SELECT ename, job,hiredate from emp where hiredate >='81/02/20' and hiredate <= '81/05/01';
--8번
SELECT ename,job,hiredate from emp where deptno = 10; or deptno = 30;
--9번
SELECT ename,sal  "employee"from emp where sal >=1500;
--10번
SELECT ename,job from emp where job != 'MANAGER';
--11번
SELECT ename,sal,comm from emp where comm >= 1;
--12번



