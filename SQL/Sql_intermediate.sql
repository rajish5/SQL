

select * from continent

select * from population

select * from populations


-- Functions (upper, lower, concat (||))

select upper(country) as COUNTRY, lower(continents) as continents, continent.total_population  from continent


select country || '-' || continents as concat, total_population  from continent c 

-- Functions (replace, TRIM )

select country, replace ('continents','continents','MIDDLE'), wh.continents , wh.total_population  from continent wh

where continents ='MIDDLEEAST'

-- Functions (SUBSTRING)



select substr(continents, 1,4) from continent


-- MATH FUNCTIONS, ROUND , CEIL, FLOOR 


select ABS (-67) as abs

select ROUND(23.6578,2) as round

select ceil(23.456) as ceil


select floor (34.7878) as floor


select upper(replace('python funda', 'python', 'sql') 
)as replacement



select INSTR ('sql funds', '') as length



-- CASE EXPRESSION

select country, total_population,

case country

when 'INDIA' then 'ASIA'
when 'CHINA' then 'ASIA'
when 'PAKISTHAN' then 'ASIA'

else 'UNKNOWN'
end as continent

from population

-- SEARCHED CASE EXPRESSION


select country, total_population ,

case
	
	when total_population > 250000
	then 'HIGH'
	when total_population >15000
	then 'LOW'
	else 'UNKNOWN'
end as POPULATION_CAT

from population


-- NULL'S

insert
	into
	populations 
(country,
	total_population)
values
('UGANDA', NULL),
('HOLAND', NULL),
('POTREGES', NULL);

select country, total_population from populations where total_population is null;

select country, total_population from populations where total_population is not null;

select country, COALESCE(total_population, 0) as total_population from  populations;

-- AGGREGATE FN

-- MIN, MAX


select   MAX(total_population) from  populations 
select MIN(total_population) from  populations 

select SUM(total_population) from  populations


select AVG(total_population) from  populations


select count(total_population) from populations

select * from populations


-- GROUP BY

select continents, MAX(total_population) from continent group by continents


select continents from continent group by continents

select continents ,count(*) As no_country from continent group by continents


select continents ,count(*) As no_country, MAX(continent.total_population ) from continent group by continents

-- MULTIPLE GROUPS




select * from  incomelevelpopulation

select continents, income_level, MAX(total_population) from  incomelevelpopulation group by continents, income_level 



