USE [AdventureWorks2019]
;

/*---------- #1, 2, 3 Exercises  ----------*/
--/*
     SELECT [ID] = A.[BusinessEntityID]
          , A.[SalesQuota]
          , A.[SalesYTD]
          , [TerritoryName] = B.[Name]
       FROM [Sales].[SalesPerson] AS A
       /* returns 17 rows */
       JOIN [Sales].[SalesTerritory] AS B
         ON A.[TerritoryID] = B.[TerritoryID]
      WHERE 1=1
        AND A.[SalesYTD] < 2000000
   ORDER BY B.[Name]
           /* Note: IDs 274 , 285 , 287 are NULL in an OUTER JOIN */
           /* So using INNER JOIN we keep all from 1st and matching from 2nd */
;
--*/

--SELECT * FROM [Sales].[SalesTerritory]
--returns 10

/*
  Filename: ...: 57-Outer_Join_Exercise.sql
  Date ........: 09-May-2022
  Time ........: 19:57
  Desc ........: Practice Outer Joins
  Notes........:
    1.
*/

GO