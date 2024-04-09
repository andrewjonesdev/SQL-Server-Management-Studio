SELECT
	   [Amount Per Paycheck] = [Rate] * 40 * [PayFrequency]
	  ,[BusinessEntityID]
      ,[Rate]
  FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory]
  ORDER BY [Amount Per Paycheck] DESC
