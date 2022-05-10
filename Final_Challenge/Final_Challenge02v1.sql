
/**
 Enhance your query from Challenge 1 by “staing” it with therresponding Sales data*
  •	Purchasing.PurchaseOrderDetail maps to Sales.SalesOrderDetail
  •	Purchasing.PurchaseOrderHeader maps to Sales.SalesOrderHeader
 */


/*=============================================
=            Final Challenge #1              =
=============================================*/
USE [AdventureWorks2019]
GO

SELECT
   [Date] = CONVERT(date, Poh.[OrderDate])
  ,[Order Type] = 'Purchase'
  ,[Order ID] = Pod.[PurchaseOrderID]
  ,[Detail ID] = Pod.[PurchaseOrderDetailID]
  ,[Qty] = Pod.[OrderQty]
  ,[Price] = ROUND(Pod.[UnitPrice], 2)
  ,[Total] = ROUND(Pod.[LineTotal], 2)
  ,[Order Size Category] =
    CASE
      WHEN Pod.[OrderQty] > 500 THEN 'Large'
      WHEN Pod.[OrderQty] <= 500 THEN 'Medium'
    ELSE 'Small'
    END
  ,[Product] = Pro.[Name]
  ,[Subcategory] = ISNULL(Sub.[Name], 'None')
  ,[Category] = ISNULL(Cat.[Name], 'None')
FROM
  [Purchasing].[PurchaseOrderDetail] AS Pod
--8,845 rows
FULL OUTER JOIN
  [Purchasing].[PurchaseOrderHeader] AS Poh
ON
  Pod.[PurchaseOrderID] = Poh.[PurchaseOrderID]
LEFT JOIN
  [Production].[Product] AS Pro
ON
  Pod.[ProductID] = Pro.[ProductID]
FULL OUTER JOIN
  [Production].[ProductSubcategory] AS Sub
ON
  Pro.[ProductSubcategoryID] = Sub.[ProductSubcategoryID]
LEFT JOIN
  [Production].[ProductCategory] AS Cat
ON
  Pro.[ProductSubcategoryID] = Cat.[ProductCategoryID]
--8,858 rows
WHERE
  Pod.[PurchaseOrderID] != ''


/*=====  End of Final Challenge #1  ======*/

UNION

/*=============================================
=            Final Challenge #2              =
=============================================*/
SELECT
   [Date] = CONVERT(date, Soh.[OrderDate])
  ,[Order Type] = 'Sale'
  ,[Order ID] = Sal.[SalesOrderID]
  ,[Detail ID] = Sal.[SalesOrderDetailID]
  ,[Qty] = Sal.[OrderQty]
  ,[Price] = ROUND(Sal.[UnitPrice], 2)
  ,[Total] = ROUND(Sal.[LineTotal], 2)
  ,[Order Size Category] =
    CASE
      WHEN Sal.[OrderQty] > 500 THEN 'Large'
      WHEN Sal.[OrderQty] <= 500 THEN 'Medium'
    ELSE 'Small'
    END
  ,[Product] = Pro.[Name]
  ,[Subcategory] = ISNULL(Sub.[Name], 'None')
  ,[Category] = ISNULL(Cat.[Name], 'None')
FROM
--  [Purchasing].[PurchaseOrderDetail] AS Pod
  [Sales].[SalesOrderDetail] AS Sal
--8,845 rows
FULL OUTER JOIN
--  [Purchasing].[PurchaseOrderHeader] AS Poh
  [Sales].[SalesOrderHeader] AS Soh
ON
--  Pod.[PurchaseOrderID] = Poh.[PurchaseOrderID]
  Sal.[SalesOrderID] = Soh.[SalesOrderID]
LEFT JOIN
  [Production].[Product] AS Pro
ON
--  Pod.[ProductID] = Pro.[ProductID]
  Sal.[ProductID] = Pro.[ProductID]
FULL OUTER JOIN
  [Production].[ProductSubcategory] AS Sub
ON
  Pro.[ProductSubcategoryID] = Sub.[ProductSubcategoryID]
LEFT JOIN
  [Production].[ProductCategory] AS Cat
ON
  Pro.[ProductSubcategoryID] = Cat.[ProductCategoryID]

GO

/*=====  End of Final Challenge #2  ======*/