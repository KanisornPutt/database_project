
-- execution_path_2
SELECT product_id, product_name, price, description,
       (SELECT user_name FROM Users u WHERE u.user_id = p.seller_id) AS seller_name
FROM Product p
WHERE is_bought = TRUE;
