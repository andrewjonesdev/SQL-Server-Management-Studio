SELECT
	P.[Name],
	P.[ListPrice],
	R.[ReviewerName]
FROM [Production].[Product] P
JOIN [Production].[ProductReview] R
On P.ProductID = R.ProductID