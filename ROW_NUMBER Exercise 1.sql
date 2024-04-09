SELECT
	[Product Name] = P.[Name],
	P.[ListPrice],
	[Product Subcategory] = PS.[Name],
	[Product Category] = PC.[Name]
FROM
[Production].[Product] P
JOIN [Production].[ProductSubcategory] PS
ON P.[ProductSubcategoryID] = PS.[ProductSubcategoryID]
JOIN [Production].[ProductCategory] PC
ON PC.[ProductCategoryID] = PS.[ProductCategoryID]