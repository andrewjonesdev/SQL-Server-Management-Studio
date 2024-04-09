SELECT
P.[Color],
P.[Style],
COUNT(*)
FROM [Production].[Product] P
GROUP BY P.[Color], P.[Style]