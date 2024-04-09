SELECT
	[Product Name] = P.[Name],
	P.[ListPrice],
	[Product Subcategory] = PS.[Name],
	[Product Category] = PC.[Name],
	[Price Rank] = ROW_NUMBER() OVER(ORDER BY P.[ListPrice] DESC),
	[Category Price Rank] = ROW_NUMBER() OVER(PARTITION BY PC.[Name] ORDER BY P.[ListPrice] DESC)
FROM
[Production].[Product] P
JOIN [Production].[ProductSubcategory] PS
ON P.[ProductSubcategoryID] = PS.[ProductSubcategoryID]
JOIN [Production].[ProductCategory] PC
ON PC.[ProductCategoryID] = PS.[ProductCategoryID]