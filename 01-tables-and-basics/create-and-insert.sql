
-- Create a table for a local store's customers

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    district VARCHAR(50),
    phone VARCHAR(15),
    total_purchase NUMERIC(10, 2)
);


-- Insert sample customer records

INSERT INTO customers (name, district, phone, total_purchase)
VALUES
    ('Rafiul Islam', 'Dhaka', '01711223344', 4500.00),
    ('Nusrat Jahan', 'Chattogram', '01822334455', 2300.50),
    ('Tanvir Ahmed', 'Sylhet', '01933445566', 7800.75),
    ('Mim Akter', 'Rajshahi', '01644556677', 1200.00);