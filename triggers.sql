1. Trigger to Update Stock When an Order is Placed


CREATE OR REPLACE TRIGGER update_stock
AFTER INSERT ON order_items
FOR EACH ROW
BEGIN
    UPDATE products
    SET stock_quantity = stock_quantity - :NEW.quantity
    WHERE product_id = :NEW.product_id;
END;
/
