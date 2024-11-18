
-- execution_path_1
SELECT p.product_id, p.product_name, p.price, p.description, u.user_name AS seller_name
FROM Product p
JOIN Users u ON p.seller_id = u.user_id
WHERE p.is_bought = TRUE;
