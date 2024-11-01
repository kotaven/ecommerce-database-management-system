1. Fetch Products from a Specific Category


SELECT product_name, price FROM products  WHERE category_id = (SELECT category_id FROM categories WHERE category_name = 'Electronics');


2. Create a New Order


INSERT INTO orders (order_id, user_id, total_amount, status, shipping_address) VALUES (2, 1, 150.00, 'Processing', '112 main road Ammerpet,india');


3. Add Products to an Order


INSERT INTO order_items (order_item_id,order_id, product_id, quantity, price) VALUES (1,1, 1, 2, 999.99);


4. View Order Details with User and Product Information


SELECT o.order_id, u.username, p.product_name, oi.quantity, oi.price 
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_id = 1;

