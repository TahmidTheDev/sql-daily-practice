
--  One-to-Many relationship

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id),
    item_name VARCHAR(100),
    price NUMERIC(10, 2)
);

INSERT INTO orders (customer_id, item_name, price)
VALUES
    (1, 'Rice Cooker', 2500.00),
    (1, 'Blender', 1800.00),
    (2, 'Table Lamp', 900.00);

--  Many-to-Many relationship

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE product_categories (
    product_id INTEGER REFERENCES products(id),
    category_id INTEGER REFERENCES categories(id),
    PRIMARY KEY (product_id, category_id)
);
