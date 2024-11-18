CREATE TABLE accepted_time (
    seller_id INTEGER NOT NULL,
    verified_time TIMESTAMP
);

CREATE OR REPLACE FUNCTION insert_verified_time()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO accepted_time (seller_id, verified_time)
    VALUES (NEW.seller_id, NOW());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER verifying
AFTER UPDATE ON seller
FOR EACH ROW
EXECUTE FUNCTION insert_verified_time();
