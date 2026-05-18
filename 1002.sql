select * from emp;
select sum(salary) from emp;
select max(salary) from emp;
select * from emp where salary=60000;
select * from emp where salary=(select max(salary) from emp);#sub query
select * from emp where salary=(select min(salary) from emp);

select * from emp where salary>(select min(salary) from emp)
    and salary<(select max(salary) from emp);
    

select * from emp where salary>(select avg(salary) from emp);


select * from emp where dept=(select dept from emp where empid=108);

select * from einfo;
select * from econ;

select * from econ where type regexp 'landline';

select * from einfo where empid=105 or empid=109;

select * from einfo where empid in(105,109);
select * from einfo 
where empid in (select empid from econ where type regexp 'landline');

select * from einfo
join econ on einfo.empid=econ.empid
where econ.type regexp 'landline';

select * from einfo 
join edept on einfo.deptid=edept.deptid
where deptname='sales';

#observation/sum*100
select avg(salary) from emp;
select empid,ename,salary,
    salary-(select avg(salary) from emp) as deviation,
    salary/(select sum(salary) from emp)*100 as percentoftotal from emp;
   
#inline view
select*from(
select empid,ename,salary,
    salary-(select avg(salary) from emp) as deviation,
    salary/(select sum(salary) from emp)*100 as percentoftotal from emp) tt
    where deviation>0;                 
    
    
with tt as(
select empid,ename,salary,
    salary-(select avg(salary) from emp) as deviation,
    salary/(select sum(salary) from emp)*100 as percentoftotal from emp)
    select * from tt where deviation>0;
    
  #common table expression : cte  
with cte as(
select empid,ename,salary,
    salary-(select avg(salary) from emp) as deviation,
    salary/(select sum(salary) from emp)*100 as percentoftotal from emp)
    select max(deviation) from cte;
    
    
with cte as(
select empid,ename,salary,
    salary-(select avg(salary) from emp) as deviation,
    salary/(select sum(salary) from emp)*100 as percentoftotal from emp)
    select * from cte where deviation<(select max(deviation)from cte);
    
select * from emp;

select dept,max(salary) from emp group by dept;
select * from emp where salary=(select max(salary)from emp where dept='sales');
#co related subquery
select * from emp a where salary=(select max(salary)from emp where dept=a.dept);

select ename,dept from emp;

select * from emp where dept='sales' and salary=10000;
select * from emp where(dept,salary)=('sales',10000);


#row constructors
select * from emp 
where(dept,salary) in (select dept,max(salary)from emp group by dept);

#scalar subqueries/single row subqueries
#vector subqueries/multi row subqueries
#tenson subqueries/multi coloumn subqueries
    

