SELECT 
       [ReviewerName]
      ,[Comments]
      ,[Cleaned Comments] = REPLACE([Comments], ',', '')
  FROM [AdventureWorks2019].[Production].[ProductReview]
