
--  Primary Key and Auto-generated ID

CREATE TABLE districts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


--  Creating a Foreign Key column

ALTER TABLE customers
ADD COLUMN district_id INTEGER REFERENCES districts(id);


-- Running queries on associated data (JOIN preview)

SELECT customers.name, districts.name AS district_name
FROM customers
JOIN districts ON customers.district_id = districts.id;


ALTER TABLE customers
DROP CONSTRAINT customers_district_id_fkey;

ALTER TABLE customers
ADD CONSTRAINT customers_district_id_fkey
FOREIGN KEY (district_id) REFERENCES districts(id)
ON DELETE SET NULL;

-- ============================
--  ON DELETE CASCADE 
ALTER TABLE orders
DROP CONSTRAINT orders_customer_id_fkey;

ALTER TABLE orders
ADD CONSTRAINT orders_customer_id_fkey
FOREIGN KEY (customer_id) REFERENCES customers(id)
ON DELETE CASCADE;