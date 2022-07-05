-- #1 How many actors are there with the last name ‘Wahlberg’?
select first_name, last_name 
from actor 
where last_name like 'Wahlberg';


-- #2 How many payments were made between $3.99 and $5.99?
select customer_id, amount 
from payment 
where amount between 3.99 and 5.99
order by amount desc;


-- #3 What film does the store have the most of? (search in inventory)
select film_id
from inventory 
group by film_id
order by film_id desc;


-- #4 How many customers have the last name ‘William’?
select first_name, last_name
from customer
where last_name like 'William';

-- #5 What store employee (get the id) sold the most rentals?
select COUNT(staff_id), staff_id
from rental
group by staff_id 
having COUNT(staff_id) > 0;


-- #6 How many different district names are there?
select district 
from address 
group by district;


-- #7 What film has the most actors in it? (use film_actor table and get film_id)
select COUNT(film_id), film_id
from film_actor
group by film_id
having COUNT(film_id) > 14;


-- #8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select first_name, last_name, store_id
from customer 
where last_name like '__%es' 
and store_id = 1;


-- #9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select COUNT(rental_id), amount, customer_id 
from payment
where customer_id > 380 
and customer_id < 430
group by amount, customer_id
having COUNT(rental_id) > 250;


select * from payment;

select rental_id, 



-- #10 Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
select rating, COUNT(rating)
from film
group by rating
having COUNT(rating) > 0;










































