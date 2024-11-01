1. Users Table

CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR(25) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR(30) NOT NULL,
    phone_number VARCHAR(13),
    address VARCHAR(55),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


2. Categories Table

CREATE TABLE categories (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR(40) NOT NULL
);


3. Products Table

CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    category_id NUMBER REFERENCES categories(category_id),
    price NUMBER(10, 2) NOT NULL,
    stock_quantity NUMBER NOT NULL,
    description VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


4. Orders Table


CREATE TABLE orders (
    order_id NUMBER PRIMARY KEY,
    user_id NUMBER REFERENCES users(user_id),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount NUMBER(10, 2),
    status VARCHAR(40),
    shipping_address VARCHAR2(100)
);


5. Order Items Table


CREATE TABLE order_items (
    order_item_id NUMBER PRIMARY KEY,
    order_id NUMBER REFERENCES orders(order_id),
    product_id NUMBER REFERENCES products(product_id),
    quantity NUMBER NOT NULL,
    price NUMBER(10, 2)
);


6. Payments Table


CREATE TABLE payments (
    payment_id NUMBER PRIMARY KEY,
    order_id NUMBER REFERENCES orders(order_id),
    payment_method VARCHAR(30),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_status VARCHAR(30),
    amount NUMBER(10, 2)
);


7. Shopping Cart Table


CREATE TABLE shopping_cart (
    cart_id NUMBER PRIMARY KEY,
    user_id NUMBER REFERENCES users(user_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


8. Cart Items Table


CREATE TABLE cart_items (
    cart_item_id NUMBER PRIMARY KEY,
    cart_id NUMBER REFERENCES shopping_cart(cart_id),
    product_id NUMBER REFERENCES products(product_id),
    quantity NUMBER NOT NULL
);
