-- Limit clause

select
	*
from
	populations
where
	total_population > 123
limit 2;
-- orderby

select
	*
from
	populations
where
	total_population > 123
order by
	country desc
limit 2;


-- upper and lower

select upper(country) as country_name , total_population from populations limit 10;

-- Alias

select upper(country) as country_name , total_population  as total_populations from populations limit 10;

-- DISTINCT Duplicates

select distinct (country)  from population

select  country  from population

-- Multiple orderby

create table continents
(
country varchar(20),
continents varchar(20),
total_population INT
)


insert into continents
(country, continents, total_population)
values
('india', 'asia', 223234),
('usa', 'america', 221231),
('india', 'asia', 223234),
('uk', 'london', 345678),
('pakisthan', 'asia', 223234),
('uae', 'middleeast', 678909),
('india', 'asia', 223234),
('uae', 'middleeast', 678909),
('german', 'london', 333333);


select * from continents order by continents desc, country asc ;







