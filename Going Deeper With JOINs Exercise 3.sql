SELECT
	P.[FirstName],
	P.[LastName],
	E.[EmailAddress],
	Ph.[PhoneNumber],
	A.[City]
FROM [Person].[Person] P
JOIN [Person].[EmailAddress] E
ON P.[BusinessEntityID] = E.[BusinessEntityID]
JOIN [Person].[PersonPhone] Ph
ON P.BusinessEntityID = Ph.BusinessEntityID
JOIN [Person].[BusinessEntityAddress] BEA
ON P.[BusinessEntityID] = BEA.[BusinessEntityID]
JOIN [Person].[Address] A
ON BEA.AddressID = A.AddressID
WHERE Ph.PhoneNumber LIKE '206%'

SELECT
	P.[FirstName],
	P.[LastName],
	E.[EmailAddress],
	Ph.[PhoneNumber],
	A.[City]
FROM [Person].[Person] P
JOIN [Person].[EmailAddress] E
ON P.[BusinessEntityID] = E.[BusinessEntityID]
JOIN [Person].[PersonPhone] Ph
ON P.BusinessEntityID = Ph.BusinessEntityID
JOIN [Person].[BusinessEntityAddress] BEA
ON P.[BusinessEntityID] = BEA.[BusinessEntityID]
JOIN [Person].[Address] A
ON BEA.AddressID = A.AddressID
WHERE LEFT(Ph.PhoneNumber, 3) = '206'