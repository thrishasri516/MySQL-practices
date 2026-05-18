select * from emp;
select empid,ename,salary/30 from emp;
#conditional expressions
select empid,ename,dept,gender,salary,
    if(gender='m',salary+2000,salary+1000) as withallow from emp;
select empid,ename, dept,gender,
    if ( gender='m','male','female') as gender from emp;
    
select * from trains;
select trainid,trainsname,departure,arrival,
    if(datediff(arrival,departure)=0,
       timediff(arrival,departure),
       datediff(arrival,departure))as journeytime from trains;
       
select empid,ename,dept,location,concat(dept,location) from emp;
select null+1,null-1,null*1 from dual;
select empid,ename,dept,location,
    concat(dept,',',if(location is null,'null',location)) from emp;
select empid,ename,dept,location,
    concat(dept,',',ifnull(location,'not alloted')) from emp;
select empid,ename,dept,
    if(type='r','regular',if(type='i','intern','temporary'))as jobtype from emp;
select empid,ename,dept,type,
    case
        when type='r' then 'regular'
        when type='t' then 'temporary'
        when type='c' then 'contract'
        when type='i' then 'intern'
        end as jobtype from emp;
select * from emp order by 
    case
        when dept='it' then 1
        when dept='accounts' then 2
        when dept='sales' then 3
        end;
select empid,ename,length(ename) from emp order by length(ename);
#first three letter order 
#select * from emp order by ename-3;
#data shaping: pivot  == rows converted into coloumns
select empid,
    if(dept='sales',ename,' ') as sales,
    if(dept='accounts',ename,' ')as accounts,
    if(dept='it',ename,' ')as it from emp;
select empid,
    if(gender='m',ename,' ')as male,
    if(gender='f',ename,' ')as female from emp;
    