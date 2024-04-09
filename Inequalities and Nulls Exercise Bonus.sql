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
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE [Title] != 'Mr.'
  OR [Title] IS NULL