SELECT
[Total Sales] = SUM(OD.[LineTotal]),
[Products] = STRING_AGG(P.[Name], ' | ')
FROM [Sales].[SalesOrderDetail] OD
JOIN [Production].[Product] P
ON OD.[ProductID] = P.[ProductID] 
GROUP BY OD.[SalesOrderID]
HAVING SUM(OD.[LineTotal]) > 5000