USE [AdventureWorks2019]
GO

--/*
SELECT
[phone_length] = LEN([PhoneNumber])
FROM [AdventureWorks2019].[Person].[PersonPhone]
WHERE 1=1
AND LEN([PhoneNumber]) = 12
ORDER BY [phone_length]
--*/

--/* #1
SELECT
 A.[CardNumber]
 , [last_four] = RIGHT(A.[CardNumber], 4)
FROM
 [Sales].[CreditCard] AS A
WHERE 1=1
;
--*/

--/* #2
SELECT
 B.[ReviewerName]
 , B.[Comments]
 , [clean_comments] = REPLACE(B.[Comments], ',', '')
FROM
 [Production].[ProductReview] AS B
WHERE 1=1
;
--*/

--/* ref-number
SELECT
 C.[FirstName]
 , C.[LastName]
 , [name_length] = LEN(C.[LastName])
FROM
 [Person].[Person] AS C
WHERE 1=1
AND LEN(C.[LastName]) >= 10
ORDER BY 3 DESC
;
--*/


