SELECT
	[EmployeeID]=E.[BusinessEntityID],
	E.[JobTitle],
	E.[HireDate],
	E.[VacationHours],
	[First Hire Vacation Hours] = FIRST_VALUE(E.[VacationHours]) OVER(PARTITION BY E.[JobTitle] ORDER BY E.[HireDate])
FROM [HumanResources].[Employee] E
ORDER BY [JobTitle], [HireDate]