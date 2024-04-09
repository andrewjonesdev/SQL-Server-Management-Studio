SELECT 
      [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[LastName]
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE [PersonType] = 'SP'
  OR [PersonType] = 'EM'
  OR [PersonType] = 'VC'