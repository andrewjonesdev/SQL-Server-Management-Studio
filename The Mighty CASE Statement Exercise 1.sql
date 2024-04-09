SELECT
	[Price Category] = 
		CASE
		WHEN  [ListPrice] > 1000 THEN 'Premium'
		WHEN  [ListPrice] > 100 AND [ListPrice] < 1000 THEN 'Mid-Range'
		ELSE  'Value'
		END,
	[Name],
	[ListPrice]
	FROM [Production].[Product]