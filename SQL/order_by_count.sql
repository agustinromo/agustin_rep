SELECT last_name, count (first_name) 
FROM sakila.actor group by last_name 
order by count(first_name) desc; 

show columns from sakila.actor; 