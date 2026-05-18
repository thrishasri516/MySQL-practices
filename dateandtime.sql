select * from trains;
select date (departure),time(departure) from trains;
select year(departure),month(departure),day(departure) from trains;
select * from trains where month(departure)=5;
select * from trains where day(departure)<7 and month(departure)=3;

select hour(departure),minute(departure),second(departure)from trains;
select* from trains where hour(departure)<12;

select * from emp;
select * from emp where month(dojoin) in (4,5,6);
select * from emp where
     month(dojoin)=4 or month(dojoin)=5 or month(dojoin)=6;
select * from emp where year(dojoin)=2023;
select empid,ename,dept,dojoin,
    adddate(dojoin,90) from emp;
select empid,ename,dept,dojoin,
subdate(dojoin,3) from emp;

select* from trains;
select trainid,trainsname,departure,arrival,
    #datediff(departure,arrival) from trains;
    datediff(arrival,departure) from trains;
select trainid,trainsname,departure,arrival,
    timediff(arrival,departure) from trains;
    
#for oracle
select dojoin, dojoin+interval '90' day from emp;
select dojoin+interval '90' minute from emp;

select trainid,trainsname,departure,
addtime(departure,'8:0') as expected_arrival from trains
where arrival is null;
select upper('good') from dual;
select current_date,current_date(),current_time(),now() from dual;
select dayname(current_date) from dual;
select empid,ename,dept,
year (current_date())-year(dobirth) as age from emp;
select dojoin,
date_format(dojoin,'%d-%m-%y'),
date_format(dojoin,'%D-%M-%Y') from emp;   
select dojoin,date_format(dojoin,'%D day of %M from the year %Y') from emp;