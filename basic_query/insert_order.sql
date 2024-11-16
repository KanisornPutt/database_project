INSERT INTO
	ORDERS (
		ORDER_ID,
		TOTAL_AMOUNT,
		ORDER_DATE_TIME,
		ORDER_STATUS,
		TRANSACTION_METHOD,
		TRANSACTION_STATUS,
		BUYER_ID
	)
VALUES
	(
		18,
		395,
		DATE_TRUNC('second', NOW()),
		'Waiting for Payment',
		'Credit Card',
		'Pending',
		1
	);