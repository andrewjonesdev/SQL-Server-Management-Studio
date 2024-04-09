SELECT 

       [FirstName]
      ,[LastName]
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE LEN([LastName]) >= 10 
  ORDER BY LEN([LastName]) DESC
