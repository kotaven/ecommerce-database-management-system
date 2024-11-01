1. Inserting Users


INSERT INTO users (user_id, username, email, password, phone_number, address) VALUES (1, 'Venkatesh kota', 'kotavenkatesh2618@gmail.com', 'Venkatesh12345*', '9100211183', 'S.R. Nagar,Hyderabad,india');

UPDATE users
SET address = '123 main road, S.R. Nagar, Hyderabad, India'
WHERE user_id = 1;


2. Inserting Categories

INSERT INTO categories (category_id, category_name) VALUES (1, 'Electronics');


3. Inserting Products


INSERT INTO products (product_id, product_name, category_id, price, stock_quantity, description) VALUES (1, 'Laptop', 1, 99999.99, 50, 'A high-performance laptop');

INSERT INTO products (product_id, product_name, category_id, price, stock_quantity, description) VALUES (2, 'T-Shirt', 2, 199.99, 100, 'Comfortable cotton t-shirt');

INSERT INTO products (product_id, product_name, category_id, price, stock_quantity, description) VALUES (3, 'Refrigerator', 3, 49999.99, 10, 'Energy-efficient refrigerator');



Method 2: Using INSERT ALL Statement


INSERT ALL
    INTO products (product_id, product_name, category_id, price, stock_quantity, description) VALUES (1, 'Laptop', 1, 999.99, 50, 'A high-performance laptop')
    INTO products (product_id, product_name, category_id, price, stock_quantity, description) VALUES (2, 'T-Shirt', 2, 19.99, 100, 'Comfortable cotton t-shirt')
    INTO products (product_id, product_name, category_id, price, stock_quantity, description) VALUES (3, 'Refrigerator', 3, 499.99, 10, 'Energy-efficient refrigerator')
SELECT * FROM dual;  -- This part is required for the statement to be valid



4. Inserting Orders


INSERT INTO orders (order_id, user_id, total_amount, status, shipping_address) VALUES (1, 1, 150.00, 'Processing', '123 main road Ammerpet');

UPDATE orders
SET shipping_address = '123 main road Ammerpet, Hyderabad, India'
WHERE order_id = 1;



5. Inserting Order Items


INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES (1, 1, 1, 1, 99999.99);


6. Inserting Payments


INSERT INTO payments (payment_id, order_id, payment_method, payment_status, amount) VALUES (1, 1, 'Credit Card', 'Success', 150.00);

