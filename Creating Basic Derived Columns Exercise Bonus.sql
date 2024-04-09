SELECT 
	   [Total Time Off] = [VacationHours] + [SickLeaveHours]
	  ,[Total Days Off] = ([VacationHours] + [SickLeaveHours]) / 8.0
	  ,[BusinessEntityID]
      ,[VacationHours]
      ,[SickLeaveHours]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE [SalariedFlag] = 0