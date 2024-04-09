SELECT
	[PurchaseOrderId],
	[OrderDate],
	[TotalDue]
	FROM [Purchasing].[PurchaseOrderHeader]
	WHERE [OrderDate] BETWEEN DATEFROMPARTS(2011, 1, 1) AND DATEFROMPARTS(2011, 7, 31)
	AND [TotalDue] > 10000