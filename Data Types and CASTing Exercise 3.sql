-- Correct Answer
SELECT 
	[Title],
	[FirstName],
	[MiddleName],
	[LastName],
	[Suffix],
	[PersonID] = CONCAT_WS(' - ', [PersonType], CAST([BusinessEntityID] AS VARCHAR))
	FROM [Person].[Person]
	WHERE [MiddleName] IS NOT NULL
	AND ([Title] IS NOT NULL OR [Suffix] IS NOT NULL)
-- Incorrect Answer?
SELECT 
	[Title],
	[FirstName],
	[MiddleName],
	[LastName],
	[Suffix],
	[PersonID] = CONCAT_WS(' - ', [PersonType], [BusinessEntityID])
	FROM [Person].[Person]
	WHERE [MiddleName] IS NOT NULL
	AND ([Title] IS NOT NULL OR [Suffix] IS NOT NULL)