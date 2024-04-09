SELECT
	[Order Id] = [PurchaseOrderId],
	[Order Detail Id] = [PurchaseOrderDetailId],
	[OrderQty],
	[LineTotal]
FROM [Purchasing].[PurchaseOrderDetail]

UNION

SELECT
	[SalesOrderId],
	[SalesOrderDetailId],
	[OrderQty],
	[LineTotal]
FROM [Sales].[SalesOrderDetail]