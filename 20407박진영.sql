--�����ͱ���
desc emp; 
select * from emp;
SELECT ename,job from emp;
--���̺���
desc professor;
SELECT * FROM professor;
SELECT name, 'good morning~~!' "������" from professor;
SELECT  dname, 'is''s deptno:'"������",deptno "dname and deptono" from dept;
SELECT  dname, 'is''s deptno:'|| deptno "dname and deptono" from dept;
select dname, q'[, it 's deptno :]', deptno "DNAME AND DEPTNO" from dept;
select profno "�����Թ�ȣ" , name"�������̸�" , pay"�����Ե�" from professor ;