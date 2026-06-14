select title , description from film f;
select * from film f where f.length  > 60 and f.length  < 75;
select * from film f where f.rental_rate = 0.99 and (f.replacement_cost = 12.99 or f.replacement_cost = 28.99);
SELECT last_name FROM customer c WHERE first_name = 'Mary';
select * from film f where f.length <= 50 
and f.rental_rate != 2.99 and f.rental_rate != 4.99;
