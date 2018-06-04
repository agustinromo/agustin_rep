SELECT last_name, count (first_name) 
FROM sakila.actor group by last_name order by last_name asc; 

show columns from sakila.actor; 