cd use scott;
show tables;

select *
from emp;

-- Having
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

-- 3
select deptno
from emp
group by deptno
having sum(sal)>5000;

-- 4
select mgr
from emp
group by mgr
having count(*)>1;

-- 5
select deptno
from emp
group by deptno
having max(sal)>3000;

-- 6;
select job
from emp
group by job
having avg(comm)>500;

-- 7
select deptno
from emp
group by deptno
having count(*)<3;

-- 8
select job
from emp
group by job
having sum(comm)!=0;

-- 9
select deptno, count(*)
from emp
where sal>4000
group by deptno
having count(*)>=1;

-- 10
select job
from emp
group by job
having sum(sal) between 3000 and 7000;


use scott;
-- ORDER BY

-- 1
select ename, sal
from emp
order by sal;

-- 2;
select * 
from emp
order by hiredate;

-- 3
select ename, deptno
from emp
order by deptno;

-- 4
select ename, comm
from emp
order by comm desc;

-- 5
select ename
from emp
order by ename;

-- 6
select ename, job, sal
from emp
order by job, sal desc;

-- 7
select deptno, ename
from emp
order by deptno, ename;

-- 8
select ename, sal
from emp
order by sal desc;

-- 9
select ename, mgr
from emp
order by mgr;

select *
from dept;

-- 10
select *
from dept
order by dname desc;

-- 11
select *
from emp
where deptno in (10,20) and sal between 1000 and 3000 and job != 'clerk'
order by sal desc;

-- 12
select job, count(*), avg(sal)
from emp
group by job
having count(*)>2 and avg(sal)>2000;

-- 13
select deptno, sum(sal)
from emp
where deptno not in (10, 30)
group by deptno
having sum(sal)>5000;

-- 14
select ename, comm
from emp
where (ename like 'S%' or ename like '%N') and comm is not null;

select * from emp;

-- 15
select deptno, count(*)
from emp
where sal between 1000 and 3000
group by deptno
having count(*)>2;

-- 16
select ename, comm
from emp
where job in ('salesman','manager') and comm = 0 or comm is null;

-- 17
select ename, deptno, sal
from emp
where ename not like '%A%' and deptno in (20,30) and sal>1500;

-- 18
select deptno, count(*), sum(sal)
from emp
group by deptno
having avg(sal)>2500 and count(*)<5;

-- 15/07/25
-- SubQuery

select *
from emp;

select ename,job
from emp
where job = (select job from emp where ename = 'smith');

-- 1
select ename, sal
from emp
where sal = (select sal from emp where ename = 'allen');

-- 2
select ename, deptno
from emp
where deptno = (select deptno from emp where ename = 'jones');

-- 3
select ename, hiredate
from emp
where hiredate < (select hiredate from emp where ename = 'scott');

-- 4
select ename, job
from emp
where job = (select job from emp where ename = 'ford');

-- 5
select ename, mgr
from emp
where mgr in (select mgr from emp where sal > (select avg(sal) from emp));

-- 5
select ename, deptno
from emp
where deptno = (select deptno from emp where ename = 'smith');

-- 6
select ename, sal
from emp
where sal = (select max(sal) from emp);

-- 7
select ename, hiredate
from emp
where hiredate = (select min(hiredate) from emp);

-- 8
select ename, sal
from emp
where sal = (select sal from emp where ename='miller');

-- 9
select ename, sal, deptno
from emp
where sal = (select sal from emp where ename = 'king') and deptno = (select deptno from emp where ename = 'allen');

-- 10
select ename, comm
from emp
where comm = (select comm from emp where ename = 'ward');

-- subquery for connecting tables

select * from dept;
select * from emp;
-- 1
select ename
from emp
where deptno in (select deptno from dept where loc = 'dallas');


-- 2
select ename
from emp
where deptno = (select deptno from dept where dname = 'sales');

-- 3
select ename
from emp
where deptno in (select deptno from dept where loc = 'chicago');

-- 4
select ename
from emp
where deptno in (select deptno from dept where dname like 'A%');

-- 5
select ename
from emp
where deptno in (select deptno from dept where loc != 'new york');

-- 6
select ename
from emp
where deptno = (select deptno from dept where dname = 'research');

-- 7
select ename
from emp
where deptno in (select deptno from dept where loc like '%s');

-- 8
select ename
from emp
where deptno in (select deptno from dept where dname like '%t%');

-- 9
select ename 
from emp
where deptno in (select deptno from dept where loc = 'boston');

-- 10
select ename
from emp
where deptno in(select deptno from dept where dname like '______%');











