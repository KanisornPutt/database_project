CREATE OR REPLACE FUNCTION verified(seller_ids INT[])
RETURNS VOID
LANGUAGE plpgsql
AS
$$
BEGIN
    UPDATE seller
    SET verified_status = TRUE
    WHERE seller_id = ANY(seller_ids);
END;
$$;
--
SELECT verified(array[1,2,3])