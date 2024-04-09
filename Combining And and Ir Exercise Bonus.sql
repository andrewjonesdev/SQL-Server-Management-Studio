SELECT  [Person Type] = [PersonType],
[Title],
[First Name] = [FirstName],
[Middle Name] = [MiddleName],
[Last Name] = [LastName],
[Suffix]

  FROM [AdventureWorks2019].[Person].[Person]
  WHERE [PersonType] IN ( 'EM',
  'SP')
  AND ([Title] IS NULL
  OR [MiddleName] IS NULL
  OR [Suffix] IS NULL)