SELECT
	P.[BusinessEntityID],
	P.[SalesQuota],
	P.[SalesYTD],
	[Territory Name] = T.[Name]
FROM [Sales].[SalesPerson] P
LEFT JOIN [Sales].[SalesTerritory] T
ON P.[TerritoryID] = T.[TerritoryID]