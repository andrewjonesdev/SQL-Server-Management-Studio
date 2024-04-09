SELECT
	[FirstName],
	[LastName],
	[NickName] = CONCAT_WS('-', LEFT([FirstName],1), LEFT([LastName],3))
	FROM [Person].[Person]