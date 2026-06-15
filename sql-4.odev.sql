select distinct replacement_cost from film;
select count(distinct replacement_cost )from film ;
select count(title) from film where title like 'T%' and rating = 'G' ;
select count(country) from country c where length(c.country) = 5;
select count(city) from city c where c.city  ilike '%R';
