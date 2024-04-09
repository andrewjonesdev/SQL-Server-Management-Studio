SELECT
[Color] = ISNULL(P.[Color], 'No Color'),
[Style] = ISNULL(P.[Style], 'NA'),
COUNT(*)
FROM [Production].[Product] P
GROUP BY P.[Color], P.[Style]