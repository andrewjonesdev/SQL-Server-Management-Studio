SELECT
	P.[ProductID],
	[Product Name] = P.[Name],
	PLPH.[ListPrice],
	PLPH.[ModifiedDate],
	[Highest Price] = FIRST_VALUE(PLPH.[ListPrice]) OVER(PARTITION BY P.[ProductID] ORDER BY PLPH.[ListPrice]DESC),
	[Lowest Cost] = FIRST_VALUE(PLPH.[ListPrice]) OVER(PARTITION BY P.[ProductID] ORDER BY PLPH.[ListPrice]),
	[Difference] = FIRST_VALUE(PLPH.[ListPrice]) OVER(PARTITION BY P.[ProductID] ORDER BY PLPH.[ListPrice]DESC) - FIRST_VALUE(PLPH.[ListPrice]) OVER(PARTITION BY P.[ProductID] ORDER BY PLPH.[ListPrice])
FROM [Production].[Product] P
JOIN [Production].[ProductListPriceHistory] PLPH
ON  P.[ProductID] = PLPH.[ProductID]
ORDER BY P.[ProductID], PLPH.[ModifiedDate]