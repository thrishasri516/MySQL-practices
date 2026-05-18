create table cust(
	custid numeric (4),
    cname varchar(30));
    show tables;
select*from cust;
describe cust;
insert into cust values(101,'raja');#positional
select * from cust;

update cust set mobile=999999234;

alter table cust add column (pan char(10));
describe cust;
alter table cust add column (email varchar(20));

insert into cust (custid,pan) values(102,'asdf34');


update cust set mobile=99999;
select * from cust;

update cust set mobile=1234556 where custid=101;
select * from cust;

alter table cust modify column cname varchar(10);
describe cust;
alter table cust modify column cname varchar(2);

alter table cust drop column email;

describe cust;
alter table cust drop column cname;
select * from cust;
delete from cust where custid=101;
drop table cust;



create,alter,drop  data definition language ddl
insert,update,delete  data manipulation language dml
select   data query language dql


#role 