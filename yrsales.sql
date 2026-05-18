#analytical functions

select empid,ename,dept,salary,
    rank() over(order by salary) from emp;
    
select empid,ename,dept,salary,
    dense_rank() over(order by salary) from emp;
    
select empid,ename,dept,salary,
     dense_rank() over(order by salary desc)as salrank from emp;
     #nth solution
     with cte as(
     select empid,ename,dept,salary,
     dense_rank() over(order by salary desc) as salrank from emp)
     select * from cte where salrank=3;
     
#top n

with cte as(
     select empid,ename,dept,salary,
     dense_rank() over(order by salary desc) as salrank from emp)
     select * from cte where salrank<4;
     
     with cte as(
     select empid,ename,dept,salary,
     dense_rank() over(order by salary) as salrank from emp)
     select * from cte where salrank<=3;
     
with cte as(
     select empid,ename,dept,salary,
     dense_rank() over(order by salary desc) as salrank from emp)
     select * from cte where salrank=3;

with cte as(
     select empid,ename,dept,salary,
     dense_rank() over(order by salary desc) as salrank from emp)
     select * from cte where ;
     
select * from yearsales order by repid;

select repid,quarter,qtrsales,
    lag(qtrsales) over(partition by repid order by repid)as prvqtr from yearsales;
     
     

with cte as(
select repid,quarter,qtrsales,
    lag(qtrsales) over(partition by repid order by repid)as prvqtr from yearsales)
	select repid,quarter,qtrsales,prvqtr,qtrsales-prvqtr as progress from cte;
#feature engineering - thinking to create additional column tables


select empid,ename,dept,salary,row_number() over(order by salary) from emp;






     