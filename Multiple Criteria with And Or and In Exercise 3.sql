SELECT 
      [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[LastName]
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE [PersonType] IN ('SP'
  ,'EM'
  ,'VC')