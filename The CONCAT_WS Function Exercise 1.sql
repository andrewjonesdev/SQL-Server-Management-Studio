SELECT
	[Full Address] = CONCAT_WS(' ', ad.[AddressLine1], ad.[AddressLine2], ad.[City], sp.[Name], ad.[PostalCode])
	FROM  [Person].[Address] as ad
	INNER JOIN [Person].[StateProvince] as sp ON ad.[StateProvinceID] = sp.StateProvinceID