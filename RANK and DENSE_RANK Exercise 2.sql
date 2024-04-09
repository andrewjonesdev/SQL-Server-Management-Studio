SELECT
	[Product Name] = P.[Name],
	P.[ListPrice],
	[Product Subcategory] = PS.[Name],
	[Product Category] = PC.[Name],
	[Price Rank] = ROW_NUMBER() OVER(ORDER BY P.[ListPrice] DESC),
	[Category Price Rank] = ROW_NUMBER() OVER(PARTITION BY PC.[Name] ORDER BY P.[ListPrice] DESC),
	[Category Price Rank with Rank] = RANK() OVER(PARTITION BY PC.[Name] ORDER BY P.[ListPrice] DESC),
	[Category Price Rank with Dense Rank] = DENSE_RANK() OVER(PARTITION BY PC.[Name] ORDER BY P.[ListPrice] DESC),
	[Top 5 in Category] = 
		CASE
		WHEN (ROW_NUMBER() OVER(PARTITION BY PC.[Name] ORDER BY P.[ListPrice] DESC))<=5
		THEN 'True'
		ELSE 'False'
		END
FROM
[Production].[Product] P
JOIN [Production].[ProductSubcategory] PS
ON P.[ProductSubcategoryID] = PS.[ProductSubcategoryID]
JOIN [Production].[ProductCategory] PC
ON PC.[ProductCategoryID] = PS.[ProductCategoryID]