SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE [Gender] = 'F'
  AND ([JobTitle] = 'Network Manager'
  OR [JobTitle] = 'Application Specialist')