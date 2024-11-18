CREATE OR REPLACE FUNCTION update_seller_flag()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS 
$$
BEGIN
    UPDATE users
    SET seller_flag = TRUE
    WHERE user_id = NEW.seller_id;
    RETURN NEW;
END;
$$;

CREATE TRIGGER update_sellerFlag
AFTER UPDATE ON seller
FOR EACH ROW
EXECUTE FUNCTION update_seller_flag();

