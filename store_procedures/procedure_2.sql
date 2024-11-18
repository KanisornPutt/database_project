CREATE OR REPLACE PROCEDURE public.addproductreview(
    pid INTEGER,
    buyerid INTEGER,
    revcontent VARCHAR,
    rating INTEGER
) LANGUAGE plpgsql
AS $procedure$
DECLARE
    new_review_id INTEGER;
BEGIN
    SELECT COALESCE(MAX(review_id), 0) + 1 INTO new_review_id
    FROM review;
    
    INSERT INTO review (review_id, product_id, buyer_id, review_content, review_date_time, stars)
    VALUES (new_review_id, pid, buyerid, revcontent, NOW(), rating);
END;
$procedure$;