
CREATE OR REPLACE FUNCTION search_by_name(name VARCHAR)
RETURNS TABLE(
	product_id INTEGER,
	product_name VARCHAR
)
LANGUAGE plpgsql
AS
$$
DECLARE 
	pattern VARCHAR;
BEGIN
	pattern := '%' || name || '%';
	RETURN QUERY
	SELECT p.product_id, p.product_name
	FROM product p
	WHERE p.product_name ILIKE pattern
	ORDER BY p.product_id ASC;
END;
$$



--usage
SELECT * FROM search_by_name('text_from_search_bar');
