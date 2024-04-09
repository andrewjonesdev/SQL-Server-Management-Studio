SELECT
	[Product Price] = CONCAT_WS(': $', [NAME], [ListPrice])
	FROM
	[Production].[Product]
	WHERE [ListPrice] > 1000