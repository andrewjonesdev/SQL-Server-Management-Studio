SELECT
P.[Color],
COUNT(*)
FROM [Production].[Product] P
GROUP BY P.[Color]