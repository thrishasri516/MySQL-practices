select * from edept;
select * from einfo;
select * from ecity;
select* from econ;

#empid,ename,salary,deptname
#fully qualified
#cartesian product

select einfo.empid,einfo.ename,einfo.salary,edept.deptname,
einfo.deptid,edept.deptid from einfo,edept;

select einfo.empid,einfo.ename,einfo.salary,edept.deptname,
einfo.deptid,edept.deptid from einfo
join edept on einfo.deptid=edept.deptid;#join is compulsory

#empid,ename,salary,city name

select einfo.empid,einfo.ename,einfo.salary,ecity.city from einfo join ecity
on einfo.cityid=ecity.cityid;

#empid,ename,deptname,salary,city

select einfo.empid,einfo.ename,edept.deptname,einfo.salary,ecity.city 
from einfo join edept on einfo.deptid=edept.deptid
join ecity on ecity.cityid=einfo.cityid;

select a.empid,a.ename,a.salary,b.deptname,c.city
from einfo a 
join edept b on a.deptid=b.deptid
join ecity c on c.cityid=a.cityid;


#deptname,sum of salary

select deptid,sum(salary) from einfo group by deptid;

select edept.deptname,sum(einfo.salary)
 from einfo
 join edept on einfo.deptid=edept.deptid
 group by edept.deptname;
 
 select * from einfo
     join edept on einfo.deptid=edept.deptid;
     
select * from einfo;


#equal joins/natural joins/inner joins
select a.empid,a.ename,a.salary,
b.city
from einfo a 
join ecity b on a.cityid=b.cityid;

#outer joins
select a.empid,a.ename,a.salary,
b.city
from einfo a 
left join ecity b on a.cityid=b.cityid;

select a.empid,a.ename,a.salary,
b.city
from einfo a 
right join ecity b on a.cityid=b.cityid;

select a.empid,a.ename,a.salary,
b.city
from einfo a 
left join ecity b on a.cityid=b.cityid
union
select a.empid,a.ename,a.salary,
b.city
from einfo a 
right join ecity b on a.cityid=b.cityid;


