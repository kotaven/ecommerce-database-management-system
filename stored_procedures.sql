Stored Procedures


CREATE OR REPLACE PROCEDURE create_order (
    p_user_id NUMBER,
    p_total_amount NUMBER,
    p_status VARCHAR2,
    p_shipping_address VARCHAR2
) AS
BEGIN
    INSERT INTO orders (user_id, total_amount, status, shipping_address)
    VALUES (p_user_id, p_total_amount, p_status, p_shipping_address);
END;
/