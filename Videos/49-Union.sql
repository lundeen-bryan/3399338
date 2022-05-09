USE [AdventureWorks2019];
GO


/*---------- section title   ----------*/
--/*
SELECT
 [ID] = A.[SalesOrderID]
 ,[O-Date] = CAST(A.[OrderDate] AS DATE)
/*  ,[OrderType] = 'CustomerOrder' */
FROM
 [Sales].[SalesOrderHeader] AS A
WHERE 1=1
AND YEAR(A.[OrderDate]) = 2013
--*/ results in 14,182 rows

UNION ALL

--/*
     SELECT [Pid] = B.[PurchaseOrderID]
          , [O-Date] = CAST(B.[OrderDate] AS DATE)
          , [OrderType] = 'VendorOrder'
       FROM [Purchasing].[PurchaseOrderHeader] AS B
      WHERE 1=1
        AND YEAR(B.[OrderDate]) = 2013
--*/ results in 1,307 rows

/* returns 15,489 rows because we merged 14,182 + 1,307 */





/*
  Filename: ...: 49-Union.sql
  Date ........: 09-May-2022
  Time ........: 11:17
  Desc ........: practice unions
  Notes........:
    1.
*/


GO