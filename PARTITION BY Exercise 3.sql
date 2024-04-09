SELECT
	P.[Name],
	P.[ListPrice],
	[Product Subcategory] = PS.[Name],
	[Product Category] = PC.[Name],
	[Avg Price By Category] = AVG(P.[ListPrice]) OVER(PARTITION BY PC.[Name]),
	[Avg Price By Subcategory] = AVG(P.[ListPrice]) OVER(PARTITION BY PC.[Name], PS.[Name])
FROM
[Production].[Product] P
JOIN [Production].[ProductSubcategory] PS
ON P.[ProductSubcategoryID] = PS.[ProductSubcategoryID]
JOIN [Production].[ProductCategory] PC
ON PC.[ProductCategoryID] = PS.[ProductCategoryID]