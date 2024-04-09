SELECT DISTINCT
[FirstName],
[MiddleName],
[LastName]
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE [MiddleName] IS NOT NULL
  ORDER BY [LastName], [FirstName]
