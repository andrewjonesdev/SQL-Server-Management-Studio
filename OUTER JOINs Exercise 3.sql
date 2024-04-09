SELECT
	P.[BusinessEntityID],
	P.[SalesQuota],
	P.[SalesYTD],
	[Territory Name] = T.[Name]
FROM [Sales].[SalesPerson] P
JOIN [Sales].[SalesTerritory] T
ON P.[TerritoryID] = T.[TerritoryID]
WHERE P.SalesYTD < 2000000