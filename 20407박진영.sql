--3�� �������Լ� ��������
--1) emp ���̺��� ����Ͽ� ��� �߿��� �޿�(sal)�� ���ʽ�(comm)�� ��ģ �ݾ��� ���� ���� ���� ���� ���� ���, ��ձݾ��� ���ϼ���.
--��, ���ʽ��� ���� ���� ���ʽ��� 0 ���� ����ϰ� ��� �ݾ��� ��� �Ҽ��� ù° �ڸ������� ������ �ϼ���.
select * from emp;
select max(sal+nvl(comm,0)),min(sal+nvl(comm,0)),round(avg(sal+nvl(comm,0)),1) from emp;
--2) student ���̺��� birthday Į���� �����ؼ� �Ʒ��� ���� ������ ���� �ڼ��� ����ϼ���.
SELECT count (*)|| 'EA' "total",
        count (decode(To_char(birthday,'MM'),'01',0))||'EA' "JAN" ,
        count (decode(To_char(birthday,'MM'),'02',0))||'EA' "FEB" ,
        count (decode(To_char(birthday,'MM'),'03',0))||'EA' "MAR" ,
        count (decode(To_char(birthday,'MM'),'04',0))||'EA' "APR" ,
        count (decode(To_char(birthday,'MM'),'05',0))||'EA' "MAV" ,
        count (decode(To_char(birthday,'MM'),'06',0))||'EA' "JUN" ,
        count (decode(To_char(birthday,'MM'),'07',0))||'EA' "JUL" ,
        count (decode(To_char(birthday,'MM'),'08',0))||'EA' "AUG" ,
        count (decode(To_char(birthday,'MM'),'09',0))||'EA' "SEP" ,
        count (decode(To_char(birthday,'MM'),'10',0))||'EA' "OCT" ,
        count (decode(To_char(birthday,'MM'),'11',0))||'EA' "NOV" ,
        count (decode(To_char(birthday,'MM'),'12',0))||'EA' "DEC" 
        from student;

--3) Student ���̺��� tel Į���� �����Ͽ� �Ʒ��� ���� ������ �ο����� ����ϼ���.
--��, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 052-ULSAN, 053-DAEGU, 055-GYEONGNAM���� ����ϼ���.
SELECT count (*),
        count (decode(substr(tel,1,INSTR(tel,')')-1),'02',0)) "����",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'031',0)) "���",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'051',0)) "�λ�",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'052',0)) "���",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'053',0)) "�뱸",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'055',0)) "�泲"
        from student;
        

--4) ���� emp ���̺� �Ʒ��� �ΰ��� �����͸� �Է��Ͻ� �� �۾��ϼ���.
--Emp ���̺��� ����Ͽ� �Ʒ��� ȭ��� ���� �μ����� ���޺��� �޿� �հ� ����� ����ϼ���.

--5) emp ���̺��� ����Ͽ� �������� �޿��� ��ü �޿��� ���� �޿� �ݾ��� �Ʒ��� ������ ����ϼ���.
-- ��, �޿��� ������������ �����ؼ� ����ϼ���.
select deptno,ename,sal,sum(sal) over(ORDER by sal) from emp;

--6) fruit ���̺��� �Ʒ��� ���� ���·� ����ϼ���.
select * from fruit;
select max (sum(decode(name,'apple',100))),
max (sum(decode(name,'grape',200))),
max (sum(decode(name,'orange',300)))
from fruit
group by name;


--7) student ���̺��� Tel Į���� ����Ͽ� �Ʒ��� ���� ������ �ο����� ��ü ��� �����ϴ� ������ ����ϼ���.


--8) emp ���̺��� ����Ͽ� �Ʒ��� ���� �μ����� �޿� �����հ谡 �������� ����ϼ���.( �� �μ� ��ȣ�� �������� ����ϼ���. )


--9) emp ���̺��� ����Ͽ� �Ʒ��� ���� �� ����� �޿����� ��ü ���� �޿� �Ѿ׿��� ��%�� ������ �����ϴ��� ����ϼ���.
--��, �޿� ������ ���� ����� ���� ��µǵ��� �ϼ���.


--10)emp ���̺��� ��ȸ�Ͽ� �Ʒ��� ���� �� �������� �޿��� �ش� �μ� �հ�ݾ׿��� ��%�� ������ �����ϴ����� ����ϼ���.
--��, �μ� ��ȣ�� �������� ������������ ����ϼ���.


--11) loan ���̺��� ����Ͽ� 1000�� ������ ���� ������ ����ϵ� ��������, ���� �����ڵ�, ����Ǽ�, ���� �Ѿ�, ���� ����ݾ��� �Ʒ��� ���� ����ϼ���.



--12) loan ���̺��� ����Ͽ� ��ü ������ ���� �����ڵ�, ���� ����, ��������, ����Ǽ�, ������� ���� �ڵ�� ���� �������� ���� �հ踦 ���ϼ���.



--13) loan ���̺��� ��ȸ�Ͽ� 1000�� ������ ���� ������ ���� �ڵ庰�� ���ļ� ��������, ���� �����ڵ�, ����Ǽ�, ���� �Ѿ�, �ڵ庰 ���� ����ݾ��� �Ʒ��� ���� ����ϼ���.



--14) professor ���̺��� �� �������� �޿��� ���ϰ� �� ������ �޿����� ��ü ������ �޿� �հ迡�� �����ϴ� ������ ����ϼ���.



--15) professor ���̺��� ��ȸ�Ͽ� �а� ��ȣ, ������, �޿�, �а��� �޿� �հ踦 ���ϰ� �� ������ �޿��� �ش� �а��� �޿� �հ迡�� �����ϴ� ������ ����ϼ���.

