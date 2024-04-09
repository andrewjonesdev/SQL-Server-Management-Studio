SELECT [BusinessEntityID]
      ,[SalesQuota] = FORMAT([SalesQuota], 'c')
      ,[Bonus] = FORMAT([Bonus], 'c')
      ,[CommissionPct] = FORMAT([CommissionPct], 'p')
  FROM [AdventureWorks2019].[Sales].[SalesPerson]
