SELECT
P.[Name],
[Total Sales] = SUM(OD.[LineTotal]),
[Number of Sales] = COUNT(*)
FROM [Production].[Product] P
JOIN [Purchasing].[PurchaseOrderDetail] OD
ON P.[ProductID] = OD.[ProductID]
GROUP BY P.[Name]
HAVING SUM(OD.[LineTotal]) < 10000
ORDER BY [Total Sales]