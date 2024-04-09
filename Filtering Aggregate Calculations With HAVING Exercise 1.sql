SELECT
P.[FirstName],
[# of People with Name] = COUNT(*)
FROM [Person].[Person] P
GROUP BY P.[FirstName]
HAVING COUNT(*) > 50
ORDER BY [# of People with Name] DESC