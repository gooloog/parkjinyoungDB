--����1
SELECT * from student;
SElECT NAME ||'''s ID : '||id||','||'WeiGHT is '||WEight||'KG' "ID AND WEIGHT" from student;
--����2
SElECt * from emp;
select ename||'('||job||')'||', '||ename||''''||job||'''' from emp;
--����3
SELECT ename||'''s sal is '||'$'||sal from emp;
--����4
SELECT ename , sal from emp WHere empno = 7900;
SELECT ename , sal from emp WHere sal < 1000;
--����5
SELECT ename , sal , sal*1.1 ,deptno from emp where deptno = 10;
--������
SELECT ename ,hiredate FROM emp WHERE hiredate >= '81/12/25';
SELECT ename ,hiredate FROM emp WHERE hiredate <= '81/12/25';
SELECT empno,ename ,sal FROM emp WHERE sal between 2000 and 3000;
SELECT empno,ename ,sal FROM emp WHERE sal >= 2000 and sal <=3000;
SELECT empno,ename,deptno from emp WHERE deptno in(10,20);
SELECT empno,ename,deptno from emp WHERE ename in('FORD','KING');
SELECT empno, ename, sal from emp WHERE sal like '1%';
SELECT empno, ename, sal from emp WHERE ename like 'A%';
SELECT empno, ename, hiredate from emp WHERE ename like '_A%';
SELECT ename, hiredate, sal FROM emp WHERE hiredate > '82-01-01' and sal >=1300;  
SELECT ename, hiredate, sal FROM emp WHERE hiredate > '82-01-01' or sal >=1300;  
SELECT * from student;
SELECT Studno , name , deptno1 , 1 FROM Student WHERE deptno1 = 101
UNION
SELECT profno , name , deptno,2 FROM professor WHERE deptno = 101;

