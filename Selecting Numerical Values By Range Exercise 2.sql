SELECT [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  WHERE [TotalDue] BETWEEN 10000 AND 30000
  AND [Freight] < 1000
