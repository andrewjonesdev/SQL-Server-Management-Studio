SELECT
	 P.[FirstName],
	 P.[LastName],
	 E.[JobTitle],
	 EPH.[Rate],
	 [Average Rate] = AVG([Rate]) OVER()
FROM [Person].[Person] P
JOIN [HumanResources].[Employee] E
ON P.[BusinessEntityID] = E.[BusinessEntityID]
JOIN [HumanResources].[EmployeePayHistory] EPH
ON P.[BusinessEntityID] = EPH.[BusinessEntityID]