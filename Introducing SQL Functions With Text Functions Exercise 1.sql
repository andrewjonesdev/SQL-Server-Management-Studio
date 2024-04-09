SELECT 

       [CardNumber]
      ,[Last Four Digits] = RIGHT([CardNumber], 4)
  FROM [AdventureWorks2019].[Sales].[CreditCard]
