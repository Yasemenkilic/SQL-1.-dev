--12.ödev
select count(*) from film 
where length > (select AVG(length)from film);

select count(*) from film
where rental_rate = (select MAX(rental_rate)from film);

select rental_rate ,replacement_cost from film 
where rental_rate = (select MIN(rental_rate)from film) 
and replacement_cost = (select MIN(replacement_cost)from film);

select customer.customer_id, customer.first_name,customer.last_name, count(*) as total_payment
from payment 
join customer on payment.customer_id = customer.customer_id 
group by customer.customer_id, customer.first_name,customer.last_name 
order by total_payment desc ;
