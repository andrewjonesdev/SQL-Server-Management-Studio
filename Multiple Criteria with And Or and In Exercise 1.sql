SELECT 
      [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[LastName]
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE [FirstName] = 'Laura'
  AND [LastName] = 'Norman'