USE [AdventureWorks2019]
;

--/*
SELECT
 [ID] = A.[PurchaseOrderID]
 ,[DetailID] = A.[PurchaseOrderDetailID]
 ,[Qty] = A.[OrderQty]
 ,[Total] = A.[LineTotal]
 ,[RunDate] = CAST(GETDATE() AS DATE)
 ,[OrderType] = 'Puchase'
FROM
 [Purchasing].[PurchaseOrderDetail] AS A
WHERE 1=1
AND A.[LineTotal] > 10000
--*/ returns 2667

UNION

--/*
SELECT
 [ID] = B.[SalesOrderID]
 ,[DetailID] = B.[SalesOrderDetailID]
 ,[Qty] = B.[OrderQty]
 ,[Total] = B.[LineTotal]
 ,[RunDate] = CAST(GETDATE() AS DATE)
 ,[OrderType] = 'Sale'
FROM
 [Sales].[SalesOrderDetail] AS B
WHERE 1=1
AND B.[LineTotal] > 10000
ORDER BY [Total]
;
--*/ returns 766
/* UNION would return 2667+766=3433 */
GO
