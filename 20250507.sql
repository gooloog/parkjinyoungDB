--��
SELECT  sysdate,to_char(sysdate) from dual;
SELECT  sysdate,to_char(sysdate),to_char(sysdate,'mm'),to_char(sysdate,'mon'),to_char(sysdate,'month') from dual;
--��
SELECT  sysdate,to_char(sysdate),to_char(sysdate,'dd'),to_char(sysdate,'day'),to_char(sysdate,'ddth') from dual;
--�ð�
SELECT sysdate,to_char(sysdate,'rrrr-mm-dd:hh24:mi:ss') from dual;
--����1
SELECT * from student;
SELECT name,tel from student WHERE substr(birthday,4,2) ='01';
--����2
SELECT * from emp;
SELECT empno,ename,hiredate from emp WHERE substr(to_char(hiredate),4,2) in('01','02','03'); 
--����3
SELECT empno,ename,sal,comm,to_char(sal *12+comm,'999,999') from emp WHERE ename ='ALLEN'; 
--����4
SELECT empno,ename,to_char(hiredate,'yyyy-mm-dd')hiredate,
    to_char(sal*12+comm,'999,999$')sal,
    to_char((sal*12+comm)*1.15,'999,999$')"15 % up" from emp WHERE comm is not null;
    