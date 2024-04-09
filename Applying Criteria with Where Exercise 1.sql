SELECT 
      [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE [FirstName] = 'Pilar'
