drop table if exists trains;

create table trains
	(trainid numeric(5),
    trainsname varchar(100),
    departure datetime,
    arrival datetime); # In ORACLE, You can use the TIMESTAMP data type to store date,time
    
insert into trains 
values  (22565,'Cholan Express','2024-07-19 08:15:00','2024-07-19 13:45'),
		(22599,'Vaigai Express','2024-03-04 14:15','2024-03-4 19:30'),
        (16595,'Tejas Express','2024-05-14 06:30','2024-05-14 10:25'),
        (15663,'Coromandel Express','2024-05-11 08:30','2024-05-15 15:25'),
        (15663,'Buvaneswar Express','2024-05-6 14:30','2024-05-9 15:25'),
        (13115,'Sathapthi Express','2024-05-12 11:30',NULL),
        (14141,'Thirupathi Express','2024-05-29 22:14',NULL);