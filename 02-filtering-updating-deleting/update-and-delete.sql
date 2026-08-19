
UPDATE customers
SET phone = '01799887766'
WHERE name = 'Rafiul Islam';


UPDATE customers
SET district = 'Khulna', total_purchase = 3000.00
WHERE name = 'Mim Akter';


UPDATE customers
SET total_purchase = total_purchase * 1.10
WHERE district = 'Dhaka';


DELETE FROM customers
WHERE name = 'Tanvir Ahmed';


DELETE FROM customers
WHERE total_purchase < 1000;
