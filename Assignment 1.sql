-- The databases have been changed so none of the answers match up with what the key shows
-- It is the same as the lexture, all of the amounts are way off from where they were when the video was recorded

-- How many actors are there with the last name ‘Wahlberg’? 
select COUNT('last_name')
from actor
where last_name like 'Wahlberg';

-- How many payments were made between $3.99 and $5.99?
select COUNT(amount)
from payment
where amount >= 3.99 and amount <= 5.99;

-- What film does the store have the most of? (search in inventory) 
select film_id, COUNT(film_id)
from inventory
group by film_id
order by count desc;

-- How many customers have the last name ‘William’?
select count(first_name)
from customer
where first_name like 'William';

-- What store employee (get the id) sold the most rentals? 
select count(rental_id), staff_id
from rental
group by staff_id 
order by count asc

-- How many different district names are there? 
select COUNT(district)
from address

-- What film has the most actors in it? (use film_actor table and get film_id)
select count(film_id), film_id 
from film_actor
group by film_id 
order by count desc

-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
select count(customer)
from customer
where last_name like '%es'

-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
select count(amount)
from payment
where customer_id between 380 and 430
having count(amount) > 250

-- Within the film table, how many rating categories are there? And what rating has the most  movies total?
select rating, count(rating) 
from film
group by rating 

