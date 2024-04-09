SELECT
	 P.[FirstName],
	 P.[LastName],
	 E.[JobTitle],
	 EPH.[Rate],
	 [Average Rate] = AVG(EPH.[Rate]) OVER(),
	 [Maximum Rate] = MAX(EPH.[Rate]) OVER(),
	 [Diff From Average Rate] = (EPH.[Rate]-AVG(EPH.[Rate]) OVER()),
	 [Percent of Pay Rate] = ((EPH.[Rate]/MAX(EPH.[Rate]) OVER()) * 100)
FROM [Person].[Person] P
JOIN [HumanResources].[Employee] E
ON P.[BusinessEntityID] = E.[BusinessEntityID]
JOIN [HumanResources].[EmployeePayHistory] EPH
ON P.[BusinessEntityID] = EPH.[BusinessEntityID]
ORDER BY EPH.[Rate] DESC