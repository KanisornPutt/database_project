CREATE OR REPLACE PROCEDURE public.addnewproduct(
    pname VARCHAR,
    pdescription VARCHAR,
    pprice NUMERIC,
    psellerid INTEGER,
    pcollectionid INTEGER
) LANGUAGE plpgsql
AS $procedure$
DECLARE
    new_product_id INTEGER;
BEGIN
    SELECT COALESCE(MAX(product_id), 0) + 1 INTO new_product_id
    FROM product;

    INSERT INTO product (product_id, product_name, price, description, is_bought, collection_id, seller_id)
    VALUES (new_product_id, pname, pprice, pdescription, FALSE, pcollectionid, psellerid);
END;
$procedure$;
