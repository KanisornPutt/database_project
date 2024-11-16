INSERT INTO
	PRODUCT (
		PRODUCT_ID,
		SELLER_ID,
		PRODUCT_NAME,
		PRICE,
		DESCRIPTION,
		IS_BOUGHT,
		COLLECTION_ID,
		ORDER_ID
	)
VALUES
	(
		{{product_id}},
		{{seller_id}},
		{{product_name}},
		{{product_price}},
		{{product_description}},
		FALSE,
		{{collection_id}},
		null
	);