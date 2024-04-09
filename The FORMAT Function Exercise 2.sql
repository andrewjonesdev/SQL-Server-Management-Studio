SELECT
	  [Order Year Month] = FORMAT([OrderDate], 'yyyy-MM')
      ,[TaxAmt] = FORMAT([TaxAmt], 'c')
      ,[Freight] = FORMAT([Freight], 'c')
      ,[TotalDue] = FORMAT([TotalDue], 'c')
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  WHERE YEAR([OrderDate]) = 2013
