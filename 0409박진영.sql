SELECT * FROM emp;
SELECT ename, initcap(ename) "INITCAR" FROM emp WHERE deptn = 10;
SELECT ename, LOWER(ename) "LOWER" , UPPER(ename) "UpPER" FROM emp WHERE deptno=10;
SELECT ename, LENGTH(ename), LENGTHb(ename) FROM emp WHERE deptno = 20;
SELECT 'ȫ�浿',length('ȫ�浿'),length('ȫ�浿') from dual;
SELECT SUBSTR('abcde',3,2)"3,2",SUBSTR('abcde',-3,2), SUBSTR('abcde',-3,4)from dual;
SELECT * from student;
SELECT name,substr(jumin,3,4)-1 "Birthday-1" from student where deptno1 = 101;
SELECT 'A-B-C-D', instr('A-B-C-D','-',1,3) "IINSTR" from dual;
SELECT name, tel, instr(tel,'3') , profno from student where deptno1=101;
