SELECT [Organization Level] =[OrganizationLevel]
      ,[Job Title] = [JobTitle]
      ,[Vacation Hours] = [VacationHours]
      ,[Sick Leave Hours] = [SickLeaveHours]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  ORDER BY [Organization Level], [Vacation Hours] DESC 
