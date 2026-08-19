
SELECT name || ' from ' || district AS customer_info
FROM customers;

SELECT UPPER(name) AS name_upper, LOWER(district) AS district_lower
FROM customers;


SELECT * FROM customers
WHERE name LIKE 'T%';