USE [AdventureWorks2019]
;

/*---------- #1 Exercise   ----------*/
/*
     SELECT [ID] = A.[BusinessEntityID]
          , [Name] = B.[FirstName] + ' ' + B.[LastName]
          , C.[EmailAddress]
          , A.[TerritoryID]
          , A.[SalesQuota]
          , A.[CommissionPct]
          , A.[SalesYTD]
          , A.[SalesLastYear]
       FROM [Sales].[SalesPerson] AS A
       JOIN [Person].[Person] AS B
         ON A.[BusinessEntityID] = B.[BusinessEntityID]
         JOIN [Person].[EmailAddress] AS C
         ON A.[BusinessEntityID] = C.[BusinessEntityID]
      WHERE 1=1
   ORDER BY [ID]

--*/

/*---------- #2 Exercise   ----------*/
--/*
SELECT
 A.[Name]
 , A.[ListPrice]
 , B.[ReviewerName]
 , B.[Comments]
FROM
 [Production].[Product] AS A
JOIN
 [Production].[ProductReview] AS B
ON A.[ProductID] = B.[ProductID]
WHERE 1=1


--*/



/*
  Filename: ...: 52-JOINs.sql
  Date ........: 09-May-2022
  Time ........: 16:45
  Desc ........: practice joins
  Notes........:
    1.
*/


GO