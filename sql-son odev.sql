--1.
select count(*)
from film 
where title ILIKE '%E%E%E%E';

--2.
--kategori isimlerini ve kategori başına düşen film sayısını yazınız 
select category.name,count(*) from category 
join film_category on film_category.category_id = category.category_id 
join film on film.film_id = film_category.film_id 
group by category.name ;


--3.
-- En çok film bulunan rating kategorisi hangisidir 
select rating, count(*) from film 
group by rating 
order by count(*) desc
limit 1;

--4.
--film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
select title,replacement_cost,length  from film 
where title like 'K%'
order by length desc , replacement_cost asc 
limit 4;

--5.
--en çok alışveriş yapan müşterinin adı nedir 

select SUM(amount),customer.first_name,customer.last_name from customer 
join payment on customer.customer_id = payment.customer_id 
group by payment.customer_id ,customer.first_name,customer.last_name
order by SUM(amount) desc
limit 1;
