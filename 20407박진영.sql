--데이터구조
desc emp; 
select * from emp;
SELECT ename,job from emp;
--테이블구조
desc professor;
SELECT * FROM professor;
SELECT name, 'good morning~~!' "박진영" from professor;
SELECT  dname, 'is''s deptno:'"박진영",deptno "dname and deptono" from dept;
SELECT  dname, 'is''s deptno:'|| deptno "dname and deptono" from dept;
select dname, q'[, it 's deptno :]', deptno "DNAME AND DEPTNO" from dept;
select profno "교수님번호" , name"교수님이름" , pay"교수님돈" from professor ;