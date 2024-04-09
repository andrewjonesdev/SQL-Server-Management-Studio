SELECT 
	   [Total Time Off] = [VacationHours] + [SickLeaveHours]
	  ,[BusinessEntityID]
      ,[VacationHours]
      ,[SickLeaveHours]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE [SalariedFlag] = 0