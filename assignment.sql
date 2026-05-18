use world;
select * from country;
select code,name,continent,region,indepyear from country
 where indepyear is null;
 
 select code,name,continent,population from country 
 where continent = 'asia' order by population desc;
 
 select code,name,continent,governmentform from country 
 where continent = 'asia' and governmentform='republic';
 
 select * from countrylanguage;
 
 select a.code,a.name,a.continent,b.language,b.isofficial,b.percentage
 from country a 
 join countrylanguage b where continent='asia';
 
