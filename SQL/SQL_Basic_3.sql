--Filters  <, >, !=, <>, >=, <=

select * from population where population.total_population > 1000;



select * from population where population.total_population < 1000;

select * from population where population.total_population <> 1000;

--BETWEEN

select country, total_population from population where total_population between 1000 and 300000;


--LIKE


select country, total_population from population where country like 'in%'

select country, total_population from population where country like '%a'

-- IN


select country, total_population from population where country in ('india','USA')



-- NOTIN

select country, total_population from population where country not in ('india','USA')


--FUNCTIONS




