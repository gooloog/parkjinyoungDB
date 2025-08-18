select count(*) , count(comm) from emp;
select count(comm), sum(comm) from emp;
select count(comm), sum(comm) , avg(comm) from emp;
select max(sal), min(sal) from emp;
select max(hiredate) "max", min(hiredate)"min" from emp;
select deptno,round(avg(nvl(sal,0)),2) "AVG" from emp group by deptno;
select deptno,job,avg(nvl(sal,0)) "AVG_SAL" from emp group by deptno , job ORDER by deptno;
select max(nvl(comm,0)+sal),min(nvl(comm,0)+sal) ,round(avg(nvl(comm,0)+sal),1) from emp;
select * from student;
select substr(birthday,4,2), count(*) 
    from student
    group by substr(birthday,4,2);
select count(*) "total",

count(decode(substr(tel,1,instr(tel,')')-1),'02',0)) "SEOUL",
count(decode(substr(tel,1,instr(tel,')')-1),'031',0)) "GYEINGGI",
count(decode(substr(tel,1,instr(tel,')')-1),'051',0)) "BUSAN",
count(decode(substr(tel,1,instr(tel,')')-1),'052',0)) "ULSAN",
count(decode(substr(tel,1,instr(tel,')')-1),'053',0)) "DAEGU",
count(decode(substr(tel,1,instr(tel,')')-1),'055',0)) "GYEONGNAM"
from student;
