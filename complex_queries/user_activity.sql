SELECT
	U.USER_ID AS USER_ID,
	U.USER_NAME AS BUYER_NAME,
	U.USER_SNAME AS BUYER_SNAME,
	SUM(
		CASE
			WHEN TRANSACTION_STATUS = 'Complete' THEN P.PRICE
			ELSE 0
		END
	) AS COMPLETE_AMOUNT,
	COUNT(
		CASE
			WHEN TRANSACTION_STATUS = 'Complete' THEN 1
		END
	) AS NUMBER_OF_COMPLETED_PRODUCTS,
	SUM(
		CASE
			WHEN TRANSACTION_STATUS = 'Pending' THEN P.PRICE
			ELSE 0
		END
	) AS PENDING_AMOUNT,
	COUNT(
		CASE
			WHEN TRANSACTION_STATUS = 'Pending' THEN 1
		END
	) AS NUMBER_OF_PENDING_PRODUCTS
FROM
	ORDERS O
	JOIN USERS U ON O.BUYER_ID = U.USER_ID
	JOIN PRODUCT P ON P.ORDER_ID = O.ORDER_ID
GROUP BY
	U.USER_ID,
	U.USER_NAME,
	U.USER_SNAME
ORDER BY
	COMPLETE_AMOUNT DESC,
	NUMBER_OF_COMPLETED_PRODUCTS DESC,
	PENDING_AMOUNT DESC,
	NUMBER_OF_PENDING_PRODUCTS DESC,
	U.USER_ID ASC