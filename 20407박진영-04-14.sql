--instr
--Ư��������ġ ����
SELECT 'A-B-C-D', instr('A-B-C-D','-',1,3) "IINSTR" from dual;
SELECT name, tel, instr(tel,'3') , profno from student where deptno1=101;
--LPAD �������� Ư������ ä��
--RPAD ���������� Ư������ ä��
SELECT name,id,lpad(id,10,'123456')  from student WHERE deptno1 = 201;
SELECT name,id,lpad(id,10,'*')  from student WHERE deptno1 = 201;
--���������� Ư������ ä��
SELECT  rpad(ename, 9 , '123456789')from emp where deptno = 10;
SELECT name,id,rpad(id,10,'*')  from student WHERE deptno1 = 201;
SELECT rpad (ename, 10, '-') from emp Where deptno = 10;
SELECT rpad (ename, 9, substr('123456789',lengthb(ename)+1)) from emp where deptno = 10;
SELECT rpad (ename, 9, '123456789') from emp where deptno = 10;
--��Ʈ�� �־��� ���ڿ����� Ư������ ����
SELECT ename from emp WHERE deptno = 10;
SELECT LTRIM (ename, 'C') from emp WHERE deptno = 10;
--�־��� ���ڿ��� ������ ����
SELECT RTRIM (ename, 'K') from emp WHERE deptno = 10;
--���÷��̽�  A�� B�� ��ȯ
SELECT  ename, REPLACE(ename, substr(ename,1,2),'**') from emp WHERE deptno = 10;
--����1
SELECT ename,replace(ENAME,substr(ename,2,2),'--') from emp WhERE deptno = 10;
--����2
SELECT name,jumin,replace(jumin,substr(jumin,7,7),'-/-/-/-') from student WHERE deptno1 = 101;