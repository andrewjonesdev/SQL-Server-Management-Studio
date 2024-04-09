SELECT
	[ReviewerName],
	[Comments],
	[CleanedComments] = REPLACE(REPLACE([Comments],'.', ''),',', '')
	FROM [Production].[ProductReview]