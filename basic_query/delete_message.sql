SELECT
	*
FROM
	MESSAGE
WHERE
	BUYER_ID = 16
	AND SELLER_ID = 19
ORDER BY
	MESSAGE_DATE_TIME ASC

DELETE FROM MESSAGE
WHERE
	MESSAGE_ID = 1
	AND BUYER_ID = 16
	AND SELLER_ID = 19