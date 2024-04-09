SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE [Gender] = 'F'
  AND ([JobTitle] IN( 'Network Manager'
  ,'Application Specialist'))