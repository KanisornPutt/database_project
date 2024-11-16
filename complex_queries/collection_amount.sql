WITH
	COLLECTION_AMOUNT AS (
		SELECT
			C.COLLECTION_NAME AS COLLECTION_NAME,
			C.ARTIST AS ARTIST,
			C.DETAIL AS COLLECTION_DETAIL,
			SUM(P.PRICE) AS AMOUNT,
			COUNT(P.PRODUCT_ID) AS NUMBER_OF_ITEM_SOLD
		FROM
			ORDERS O
			JOIN PRODUCT P ON P.ORDER_ID = O.ORDER_ID
			JOIN COLLECTION C ON C.COLLECTION_ID = P.COLLECTION_ID
		WHERE
			O.TRANSACTION_STATUS = 'Complete'
		GROUP BY
			C.COLLECTION_NAME,
			C.ARTIST,
			C.DETAIL
	)

SELECT
	*,
	ROUND(AMOUNT / NUMBER_OF_ITEM_SOLD, 2) AS AVERAGE_AMOUNT_PER_PRODUCT
FROM
	COLLECTION_AMOUNT
ORDER BY
	AVERAGE_AMOUNT_PER_PRODUCT DESC,
	NUMBER_OF_ITEM_SOLD DESC,
	COLLECTION_NAME ASC
