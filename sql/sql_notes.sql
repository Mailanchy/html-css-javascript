use scott;
show tables;

select *
from emp;

-- 1 
select deptno
from emp
group by deptno
having avg(sal)>2500;

-- 2;
select job
from emp
group by job
having count(*)>2;

3;
select deptno
from emp
group by deptno
having sum(sal)>5000;

4;
select mgr
from emp
group by mgr
having count(*)>1;

5;
select deptno
from emp
group by deptno
having max(sal)>3000;

6;
select job
from emp
group by job
having avg(comm)>500;

7;
select deptno
from emp
group by deptno
having count(*)<3;

8;
select job
from emp
group by job
having sum(comm)!=0;

9;
select deptno, count(*)
from emp
where sal>4000
group by deptno
having count(*)>=1;

10;
select job
from emp
group by job
having sum(sal) between 3000 and 7000;


use scott;
ORDER BY
1;
select ename, sal
from emp
order by sal;

2;
select * 
from emp
order by hiredate;

3;
select ename, deptno
from emp
order by deptno;

4;
select ename, comm
from emp
order by comm desc;

5;
select ename
from emp
order by ename;

6;
select ename, job, sal
from emp
order by job, sal desc;

7;
select deptno, ename
from emp
order by deptno, ename;

8;
select ename, sal
from emp
order by sal desc;

9;
select ename, mgr
from emp
order by mgr;

select *
from dept;

10;
select *
from dept
order by dname desc;

11;
select *
from emp
where deptno in (10,20) and sal between 1000 and 3000 and job != 'clerk'
order by sal desc;

12;
select job, count(*), avg(sal)
from emp
group by job
having count(*)>2 and avg(sal)>2000;

13;
select deptno, sum(sal)
from emp
where deptno not in (10, 30)
group by deptno
having sum(sal)>5000;

14;
select ename, comm
from emp
where (ename like 'S%' or ename like '%N') and comm is not null;

select * from emp;

15;
select deptno, count(*)
from emp
where sal between 1000 and 3000
group by deptno
having count(*)>2;

16;
select ename, comm
from emp
where job in ('salesman','manager') and comm = 0 or comm is null;

17;
select ename, deptno, sal
from emp
where ename not like '%A%' and deptno in (20,30) and sal>1500;

18;
select deptno, count(*), sum(sal)
from emp
group by deptno
having avg(sal)>2500 and count(*)<5;











