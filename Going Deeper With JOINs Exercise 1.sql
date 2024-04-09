SELECT
	P.[FirstName],
	P.[LastName],
	E.[EmailAddress],
	Ph.[PhoneNumber]
FROM [Person].[Person] P
JOIN [Person].[EmailAddress] E
ON P.[BusinessEntityID] = E.[BusinessEntityID]
JOIN [Person].[PersonPhone] Ph
ON P.BusinessEntityID = Ph.BusinessEntityID