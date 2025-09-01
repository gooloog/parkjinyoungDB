--3장 복수행함수 연습문제
--1) emp 테이블을 사용하여 사원 중에서 급여(sal)와 보너스(comm)를 합친 금액이 가장 많은 경우와 가장 적은 경우, 평균금액을 구하세요.
--단, 보너스가 없을 경우는 보너스를 0 으로 계산하고 출력 금액은 모두 소수점 첫째 자리까지만 나오게 하세요.
select * from emp;
select max(sal+nvl(comm,0)),min(sal+nvl(comm,0)),round(avg(sal+nvl(comm,0)),1) from emp;
--2) student 테이블의 birthday 칼럼을 참조해서 아래와 같이 월별로 생일 자수를 출력하세요.
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

--3) Student 테이블의 tel 칼럼을 참고하여 아래와 같이 지역별 인원수를 출력하세요.
--단, 02-SEOUL, 031-GYEONGGI, 051-BUSAN, 052-ULSAN, 053-DAEGU, 055-GYEONGNAM으로 출력하세요.
SELECT count (*),
        count (decode(substr(tel,1,INSTR(tel,')')-1),'02',0)) "서울",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'031',0)) "경기",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'051',0)) "부산",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'052',0)) "울산",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'053',0)) "대구",
        count (decode(substr(tel,1,INSTR(tel,')')-1),'055',0)) "경남"
        from student;
        

--4) 먼저 emp 테이블에 아래의 두건의 데이터를 입력하신 후 작업하세요.
--Emp 테이블을 사용하여 아래의 화면과 같이 부서별로 직급별로 급여 합계 결과를 출력하세요.

--5) emp 테이블을 사용하여 직원들의 급여와 전체 급여의 누적 급여 금액이 아래와 같도록 출력하세요.
-- 단, 급여를 오름차순으로 정렬해서 출력하세요.
select deptno,ename,sal,sum(sal) over(ORDER by sal) from emp;

--6) fruit 테이블을 아래와 같은 형태로 출력하세요.
select * from fruit;
select max (sum(decode(name,'apple',100))),
max (sum(decode(name,'grape',200))),
max (sum(decode(name,'orange',300)))
from fruit
group by name;


--7) student 테이블의 Tel 칼럼을 사용하여 아래와 같이 지역별 인원수와 전체 대비 차지하는 비율을 출력하세요.


--8) emp 테이블을 사용하여 아래와 같이 부서별로 급여 누적합계가 나오도록 출력하세요.( 단 부서 번호로 오름차순 출력하세요. )


--9) emp 테이블을 사용하여 아래와 같이 각 사원의 급여액이 전체 직원 급여 총액에서 몇%의 비율을 차지하는지 출력하세요.
--단, 급여 비중이 높은 사람이 먼저 출력되도록 하세요.


--10)emp 테이블을 조회하여 아래와 같이 각 직원들의 급여가 해당 부서 합계금액에서 몇%의 비중을 차지하는지를 출력하세요.
--단, 부서 번호를 기준으로 오름차순으로 출력하세요.


--11) loan 테이블을 사용하여 1000번 지점의 대출 내역을 출력하되 대출일자, 대출 종목코드, 대출건수, 대출 총액, 누적 대출금액을 아래와 같이 출력하세요.



--12) loan 테이블을 사용하여 전체 지점의 대출 종목코드, 대출 지점, 대출일자, 대출건수, 대출액을 대출 코드와 대출 지점별로 누적 합계를 구하세요.



--13) loan 테이블을 조회하여 1000번 지점의 대출 내역을 대출 코드별로 합쳐서 대출일자, 대출 구분코드, 대출건수, 대출 총액, 코드별 누적 대출금액을 아래와 같이 출력하세요.



--14) professor 테이블에서 각 교수들의 급여를 구하고 각 교수의 급여액이 전체 교수의 급여 합계에서 차지하는 비율을 출력하세요.



--15) professor 테이블을 조회하여 학과 번호, 교수명, 급여, 학과별 급여 합계를 구하고 각 교수의 급여가 해당 학과별 급여 합계에서 차지하는 비율을 출력하세요.

