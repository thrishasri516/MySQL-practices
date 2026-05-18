# COMMIT, ROLLBACK, SAVEPOINT - TRANSACTION CONTROL STATEMENTS/LANGUAGE
#set autocommit=1;

drop table hdfc;
drop table axis;

create table hdfc (tid int,accno numeric(5), cusname varchar(30), 
	deposit numeric(10,2), withdraw numeric(10,2));
create table axis (tid int,accno numeric(5), cusname varchar(30), 
	deposit numeric(10,2), withdraw numeric(10,2));

insert into hdfc values (986,1001,'Raja',20000,null);
insert into hdfc values (456,1001,'Raja',null,5000);

insert into axis values(386,2001,'David',8000,null);

select * from hdfc;
select * from axis;

#funds Transfer
#Raja from HDFC transfer 5000 to David of Axis bank
insert into hdfc values(455,1001,'Raja',null,5000); # WITHDRAW 5000 FROM RAJA, HDFC
insert into axis vaue(455,2001,'David',5000,null); # DEPOSIT 5000 TO DAVID, AXIS
select * from axis;
select * from hdfc;
delete from hdfc where tid=455;

# TRANSACTIONS
# set of data manipulation statements to be executed to maintain data integrity
SET AUTOCOMMIT=0;
insert into hdfc values(455,1001,'Raja',null,5000); # WITHDRAW 5000 FROM RAJA, HDFC
insert into axis vaue(455,2001,'David',5000,null); # DEPOSIT 5000 TO DAVID, AXIS
ROLLBACK;
select * from hdfc;
select * from axis;
insert into hdfc values(455,1001,'Raja',null,5000); # WITHDRAW 5000 FROM RAJA, HDFC
insert into axis values(455,2001,'David',5000,null); # DEPOSIT 5000 TO DAVID, AXIS
select * from hdfc join axis using(tid);
COMMIT;
####

drop table test;
create table test as select * from emp;

select * from test;
update test set salary=salary+1000;
delete from test where empid=102;
insert into test (empid,ename) values(300,'whoisthis');
select * from test;
rollback;

savepoint salupdate;
update test set salary=salary+1000;

savepoint delemp;
delete from test where empid=103;

select * from test;
rollback to delemp;
rollback to salupdate;
commit;
# DDL
drop table hdfc;
drop table axis;
commit;
create table hdfc (tid int,accno numeric(5), cusname varchar(30), 
	deposit numeric(10,2), withdraw numeric(10,2));

insert into hdfc values (986,1001,'Raja',20000,null);
insert into hdfc values (456,1001,'Raja',null,5000);

# COMMITS;
create table axis (tid int,accno numeric(5), cusname varchar(30), 
	deposit numeric(10,2), withdraw numeric(10,2));
    
insert into axis values(386,2001,'David',8000,null);

rollback;

select * from hdfc;
select * from axis;

SELECT * FROM EMP;
ROLLBACK;

UPDATE EMP SET SALARY=15000 WHERE EMPID=102;
COMMIT;
