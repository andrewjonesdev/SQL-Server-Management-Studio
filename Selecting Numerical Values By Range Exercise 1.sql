SELECT [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  WHERE [TotalDue] > 50000
  AND [Freight] < 1000
