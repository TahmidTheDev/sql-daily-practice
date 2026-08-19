

WHERE district = 'Dhaka';


SELECT * FROM customers
WHERE total_purchase > 3000;


SELECT * FROM customers
WHERE district = 'Dhaka' AND total_purchase > 2000;


SELECT * FROM customers
WHERE district = 'Sylhet' OR district = 'Rajshahi';


SELECT * FROM customers
WHERE district IN ('Dhaka', 'Chattogram', 'Sylhet');


SELECT * FROM customers
WHERE district NOT IN ('Dhaka');


SELECT * FROM customers
WHERE total_purchase * 1.15 > 5000;


SELECT * FROM customers
WHERE total_purchase BETWEEN 2000 AND 5000;
