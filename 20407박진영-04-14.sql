--instr
--특정문자위치 추출
SELECT 'A-B-C-D', instr('A-B-C-D','-',1,3) "IINSTR" from dual;
SELECT name, tel, instr(tel,'3') , profno from student where deptno1=101;
--LPAD 왼쪽으로 특정문자 채움
--RPAD 오른쪽으로 특정문자 채움
SELECT name,id,lpad(id,10,'123456')  from student WHERE deptno1 = 201;
SELECT name,id,lpad(id,10,'*')  from student WHERE deptno1 = 201;
--오른쪽으로 특정문자 채움
SELECT  rpad(ename, 9 , '123456789')from emp where deptno = 10;
SELECT name,id,rpad(id,10,'*')  from student WHERE deptno1 = 201;
SELECT rpad (ename, 10, '-') from emp Where deptno = 10;
SELECT rpad (ename, 9, substr('123456789',lengthb(ename)+1)) from emp where deptno = 10;
SELECT rpad (ename, 9, '123456789') from emp where deptno = 10;
--엘트림 주어진 문자열에서 특정문자 삭제
SELECT ename from emp WHERE deptno = 10;
SELECT LTRIM (ename, 'C') from emp WHERE deptno = 10;
--주어진 문자에서 오른쪽 삭제
SELECT RTRIM (ename, 'K') from emp WHERE deptno = 10;
--리플레이스  A를 B로 변환
SELECT  ename, REPLACE(ename, substr(ename,1,2),'**') from emp WHERE deptno = 10;
--문제1
SELECT ename,replace(ENAME,substr(ename,2,2),'--') from emp WhERE deptno = 10;
--문제2
SELECT name,jumin,replace(jumin,substr(jumin,7,7),'-/-/-/-') from student WHERE deptno1 = 101;