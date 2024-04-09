SELECT
	[Name],
	[Color]
	FROM [Production].[Product]
	WHERE ISNULL([Weight], 0) < 10