SELECT [OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  WHERE ([TotalDue] > 10000 
  AND [TotalDue] < 30000)
  AND [Freight] < 1000
