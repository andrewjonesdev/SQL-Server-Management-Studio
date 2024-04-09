SELECT
	P.[FirstName],
	P.[LastName],
	E.EmailAddress
FROM
[Person].[Person] P
JOIN [Person].[EmailAddress] E
ON P.BusinessEntityID = E.BusinessEntityID