USE [AdventureWorks2019]
;

/*---------- section title   ----------*/
--/*
     SELECT [SalesOrderID] = A.[SalesOrderID]
          , [OrderDate] = CAST(A.[OrderDate] AS DATE)
          , [TotalDue] = FORMAT(A.[TotalDue], '$#,##0.00')
          , [Percent of Sales YTD] = FORMAT(A.[TotalDue] / B.[SalesYTD], '##0.00%')
       FROM [Sales].[SalesOrderHeader] AS A
  LEFT JOIN [Sales].[SalesPerson] AS B
         ON A.[SalesPersonID] = B.[BusinessEntityID]
        AND B.[SalesYTD] < 2000000
  LEFT JOIN [Sales].[SalesOrderHeader] AS C
         ON A.[SalesOrderID] = C.[SalesOrderID]
      WHERE 1=1
        AND A.[TotalDue] > 2000
   ORDER BY A.[SalesOrderID]
;
--*/

/*
  Filename: ...: 59-Outer_Join_Exercise_Deeper.sql
  Date ........: 09-May-2022
  Time ........: 20:18
  Desc ........: Deeper practice on Outer Joins
  Notes........:
    1.
*/


GO


--SELECT COUNT(*) FROM [Sales].[SalesOrderHeader]
/* returns 31465 rows */

--SELECT COUNT(*) FROM [Sales].[SalesPerson]
/* returns 17 rows */
