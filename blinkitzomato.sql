select*from blinkit;
select * from zomato;
#set operators
select* from blinkit;
select customer_id,customer_name from blinkit 
except
select customer_id,customer_name from zomato;
select customer_id,customer_name from zomato
except
select customer_id,customer_name from blinkit;

select customer_id,customer_name from zomato
intersect
select customer_id,customer_name from blinkit;

select customer_id,sum(order_value) from blinkit group by customer_id;

select * from blinkit
union
select * from zomato; 



select * from zomato 
union all #includes duplicate also
select * from blinkit;

create view eternal as
select * from blinkit
union
select * from zomato;

select * from eternal;
select sum(order_value) from eternal;

select month(order_date),sum(order_value) from eternal 
     group by month(order_date);
     
select customer_id,customer_name from zomato where month(order_date)=1
except
select customer_id,customer_name from zomato where month(order_date)=2;
#normalization
#ef codd
#bnfs 3.5

