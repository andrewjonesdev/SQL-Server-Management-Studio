SELECT
	[Employee Tenure] =
	CASE
	WHEN [SalariedFlag] = 1 AND DATEDIFF(YEAR, [HireDate], GETDATE()) > 15 THEN 'Non-Exempt - 15+ Years'
	WHEN [SalariedFlag] = 1 AND DATEDIFF(YEAR, [HireDate], GETDATE()) < 15 THEN 'Non-Exempt - <15 Years'
	WHEN [SalariedFlag] = 0 AND DATEDIFF(YEAR, [HireDate], GETDATE()) > 15 THEN 'Exempt - 15+ Years'
	ELSE 'Exempt - <15 Years'
	END,
	[BusinessEntityID],
	[HireDate],
	[SalariedFlag]
	FROM [HumanResources].[Employee]