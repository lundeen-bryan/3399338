
/*=============================================
=            Final Challenge #1              =
=============================================*/
/*
Use AdventureWorks2019.bak from http://archive.today/tCbWX
Create a query with the following columns:
1.	PurchaseOrderID, from Purchasing.PurchaseOrderDetail
2.	PurchaseOrderDetailID, from Purchasing.PurchaseOrderDetail
3.	OrderQty, from Purchasing.PurchaseOrderDetail
4.	UnitPrice, from Purchasing.PurchaseOrderDetail
5.	LineTotal, from Purchasing.PurchaseOrderDetail
6.	OrderDate, from Purchasing.PurchaseOrderHeader
7.	A derived column, aliased as “OrderSizeCategory”, calculated via CASE logic
    as follows:
	    - When OrderQty > 500, the logic should return “Large”
	    - When OrderQty > 50 but <= 500, the logic should return “Medium”
	    - Otherwise, the logic should return “Small”
8.	The “Name” field from Production.Product, aliased as “ProductName”
9.	The “Name” field from Production.ProductSubcategory, aliased as “Subcategory”;
    if this value is NULL, return the string “None” instead
10.	The “Name” field from Production.ProductCategory, aliased as “Category”; if
    this value is NULL, return the string “None” instead
--*/


USE [AdventureWorks2019]
GO

SELECT
   [PO-ID] = Pod.[PurchaseOrderID]
  ,[POD-ID] = Pod.[PurchaseOrderDetailID]
  ,[Qty] = Pod.[OrderQty]
  ,[Price] = ROUND(Pod.[UnitPrice], 2)
  ,[Total] = ROUND(Pod.[LineTotal], 2)
  ,[Date] = CONVERT(date, Poh.[OrderDate])
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
GO

/*=====  End of Final Challenge #1  ======*/