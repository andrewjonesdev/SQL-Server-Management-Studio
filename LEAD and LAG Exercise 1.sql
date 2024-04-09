SELECT
	P.[PurchaseOrderID],
	P.[OrderDate],
	P.[TotalDue],
	[Vendor Name] = V.[Name]
FROM
[Purchasing].[PurchaseOrderHeader] P
JOIN [Purchasing].[Vendor] V ON P.[VendorID] = V.BusinessEntityID 
WHERE YEAR(P.[OrderDate]) >= 2013 AND P.[TotalDue] > 500