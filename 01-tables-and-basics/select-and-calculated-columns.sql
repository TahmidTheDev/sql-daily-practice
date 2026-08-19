

SELECT * FROM customers;

SELECT name, district FROM customers;

SELECT
    name,
    total_purchase,
    total_purchase * 1.15 AS total_with_vat
FROM customers;