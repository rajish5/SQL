
--Creation of Tables 
create table populations
( country VARCHAR(20),
  total_population INT
);


--Insertions of data into table
insert
	into
	populations 
(country,
	total_population)
values
('india',
123456)
('america',
126735),
('russia',
097562),
('poland',
765456),
('uae',
097654);

#--updation of tables
update populations

set total_population=876545

where country='uae'




--selection of tables
select country, total_population

from populations 


--filtering of tables 

select country, total_population from populations where country='india'

select country, total_population from populations where total_population > 123453

select country, total_population from populations where total_population >321 AND country ='india'

select country, total_population from populations where total_population >321 OR country ='india'


-- dropping a table

delete from populations where 


drop table population1

select * from population1 















