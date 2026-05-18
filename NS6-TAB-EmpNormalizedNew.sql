drop table if exists einfo;
drop table if exists edept;
drop table if exists ecity;
drop table if exists econ;

CREATE TABLE einfo 
	(empid numeric(5), 
	ename varchar(20), 
	deptid smallint, 
	desig varchar(30), 
    managerid numeric(5),
	doj date, 
	salary decimal(8,2), 
	cityid smallint
	); 
    
INSERT into einfo values (101,'Rajaram',10,'Sales Executive',105,'2019-01-10',12000,null);
INSERT into einfo values (102,'Rajesh Kumar',10,'Sales Executive',109,'2021-02-15',10000,null);
INSERT into einfo values (103,'Naveen',20,'Accounts Manager',null,'2023-01-19',10000,100);
INSERT into einfo values (104,'Shabeer',20,'Junior Executive',103,'2023-02-26',10000,300);
INSERT into einfo values (105,'Suresh Kumar',10,'Sales Manager',null,'2016-03-29',38000,100);
INSERT into einfo values (106,'Kesavan',30,'Project Manager',null,'2018-10-31',60000,300);		
INSERT into einfo values (107,'Naveen',30,'Testing',106,'2015-01-23',12000,200);
INSERT into einfo values (108,'Ashok Kumar',30,'Testing',106,'2023-02-17',12000,100);
INSERT into einfo values (109,'Charles',10,'Sales Manager',null,'2024-01-16',38000,300);
INSERT into einfo values (110,'Ashok',30,'Developer',106,'2024-03-13',45000,200);

    
CREATE TABLE edept
	(deptid smallint,
     deptname varchar(30));
     
INSERT INTO edept values (10,'Sales');
INSERT INTO edept values (20,'Accounts');
INSERT INTO edept values (30,'IT');
INSERT INTO edept values (40,'Marketing');
INSERT INTO edept values (50,'HR');
     
CREATE TABLE ecity 
	(cityid smallint,
     city varchar(50) );
 
INSERT INTO ecity values (100,'Chennai');
INSERT INTO ecity values (200,'Bangalore');
INSERT INTO ecity values (300,'Delhi');
INSERT INTO ecity values (400,'Pune');
INSERT INTO ecity values (500,'Hyderabad');

create table econ
	(empid numeric(5),
     contact varchar(30), type varchar(20));

Insert into econ values (101,'raja@ssk.com','email work');
Insert into econ values (101,'7787543211','mobile work');
Insert into econ values (102,'rajesh@gmail.com','email work');
Insert into econ values (102,'9986744321','mobile work');
Insert into econ values (103,'ramkumar@gmail.com','email work');
Insert into econ values (103,'8832144321','mobile work');
Insert into econ values (104,'shivakumar@hotmail.com','email work');
Insert into econ values (104,'9677233030','mobile work');
Insert into econ values (105,'4432567899','landline home');
Insert into econ values (105,'7687685544','mobile work');
Insert into econ values (105,'suresh@gmail.com','email work');
Insert into econ values (106,'9955443142','mobile work');
Insert into econ values (107,'suresh@hotmail.com','email work');
Insert into econ values (107,'7765432122','mobile Personal');
Insert into econ values (108,'oliver@ssk.com','email work');
Insert into econ values (108,'6677882323','mobile work');
Insert into econ values (109,'kesavan@yahoo.com','email work');
Insert into econ values (109,'4432567899','landline home');
            
			