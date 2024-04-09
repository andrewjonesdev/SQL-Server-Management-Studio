SELECT 
[AccountNumber]
      ,[Name]
      ,[CreditRating]
      ,[PreferredVendorStatus]
      ,[ActiveFlag]
      ,[PurchasingWebServiceURL]
  FROM [AdventureWorks2019].[Purchasing].[Vendor]
  WHERE [Name] = 'Northwind Traders'
