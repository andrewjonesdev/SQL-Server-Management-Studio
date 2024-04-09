SELECT  [Person Type] = [PersonType],
[Title],
[First Name] = [FirstName],
[Middle Name] = [MiddleName],
[Last Name] = [LastName],
[Suffix]

  FROM [AdventureWorks2019].[Person].[Person]
  WHERE [PersonType] = 'EM'
  AND ([Title] IS NULL
  OR [MiddleName] IS NULL)