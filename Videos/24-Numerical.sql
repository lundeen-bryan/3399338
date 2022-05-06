USE [AdventureWorks2019];

/*
     SELECT [BusinessEntityID]
          , [TerritoryID]
          , [SalesQuota]
          , [Bonus]
          , [CommissionPct]
          , [SalesYTD]
          , [SalesLastYear]
          , [rowguid]
          , [ModifiedDate]
       FROM [Sales].[SalesPerson]
      WHERE 1=1
      AND [SalesQuota] <= 250000
--*/


/*----------  Between clause  ----------*/
/*
SELECT
   [ROW] = ROW_NUMBER()
   OVER (
     PARTITION BY [OrderDate]
     ORDER BY [SalesOrderID]
   )
  ,[SalesOrderID]
  ,[RevisionNumber]
  ,[OrderDate]
  ,[DueDate]
  ,[ShipDate]
  ,[Status]
  ,[OnlineOrderFlag]
  ,[SalesOrderNumber]
  ,[PurchaseOrderNumber]
  ,[AccountNumber]
  ,[CustomerID]
  ,[SalesPersonID]
  ,[TerritoryID]
  ,[BillToAddressID]
  ,[ShipToAddressID]
  ,[ShipMethodID]
  ,[CreditCardID]
  ,[CreditCardApprovalCode]
  ,[CurrencyRateID]
  ,[SubTotal]
  ,[TaxAmt]
  ,[Freight]
  ,[TotalDue]
  ,[Comment]
  ,[rowguid]
  ,[ModifiedDate]
FROM [Sales].[SalesOrderHeader]
WHERE 1=1
AND [TotalDue] BETWEEN 20000 AND 30000
ORDER BY [OrderDate]
--*/

/*
SELECT [ROW] = ROW_NUMBER()
OVER (
    PARTITION BY [OrderDate]
    ORDER BY [SalesOrderID]
)
,[SalesOrderID]
,[RevisionNumber]
,[OrderDate]
,[DueDate]
,[ShipDate]
,[Status]
,[OnlineOrderFlag]
,[SalesOrderNumber]
,[PurchaseOrderNumber]
,[AccountNumber]
,[CustomerID]
,[SalesPersonID]
,[TerritoryID]
,[BillToAddressID]
,[ShipToAddressID]
,[ShipMethodID]
,[CreditCardID]
,[CreditCardApprovalCode]
,[CurrencyRateID]
,[SubTotal]
,[TaxAmt]
,[Freight]
,[TotalDue]
,[Comment]
,[rowguid]
,[ModifiedDate]
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
WHERE 1=1
ORDER BY [OrderDate]
--*/


/*----------  Wildcards  ----------*/
/*
SELECT [ROW] = ROW_NUMBER()
OVER (
    PARTITION BY [PersonType]
    ORDER BY [BusinessEntityID]
)
,[BusinessEntityID]
,[PersonType]
,[NameStyle]
,[Title]
,[FirstName]
,[MiddleName]
,[LastName]
,[Suffix]
,[EmailPromotion]
,[AdditionalContactInfo]
,[Demographics]
,[rowguid]
,[ModifiedDate]
FROM [AdventureWorks2019].[Person].[Person]
WHERE 1=1
AND [FirstName] LIKE '[abc]%'
--AND [FirstName] LIKE 'Tom%'
--AND [LastName] LIKE 'B%'
--ORDER BY [LastName]
--*/


/*
SELECT [ROW] = ROW_NUMBER()
OVER (
    PARTITION BY [JobTitle]
    ORDER BY [BusinessEntityID]
)
,[BusinessEntityID]
,[NationalIDNumber]
,[LoginID]
,[OrganizationNode]
,[OrganizationLevel]
,[JobTitle]
,[BirthDate]
,[MaritalStatus]
,[Gender]
,[HireDate]
,[SalariedFlag]
,[VacationHours]
,[SickLeaveHours]
,[CurrentFlag]
,[rowguid]
,[ModifiedDate]
FROM [AdventureWorks2019].[HumanResources].[Employee]
WHERE 1=1
AND [JobTitle] NOT LIKE '%[0-9]%' --112 rows see all rows w/job title has a number
--AND [JobTitle] LIKE '%[0-9]%' --178 rows see all rows w/job title has a number
ORDER BY [BusinessEntityID]
--*/


/*----------  Order by  ----------*/


/*
SELECT [ROW] = ROW_NUMBER()
OVER (
    PARTITION BY [OrderDate]
    ORDER BY [TotalDue] DESC
)
,[Total Amount Due] = [TotalDue]
,[SalesOrderID]
,[RevisionNumber]
,[OrderDate]
,[DueDate]
,[ShipDate]
,[Status]
,[OnlineOrderFlag]
,[SalesOrderNumber]
,[PurchaseOrderNumber]
,[AccountNumber]
,[CustomerID]
,[SalesPersonID]
,[TerritoryID]
,[BillToAddressID]
,[ShipToAddressID]
,[ShipMethodID]
,[CreditCardID]
,[CreditCardApprovalCode]
,[CurrencyRateID]
,[SubTotal]
,[TaxAmt]
,[Freight]
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
WHERE 1=1
AND [TotalDue] > 10000 --1878 rows
ORDER BY [TotalDue] DESC
--*/


/*
SELECT [ROW] = ROW_NUMBER()
OVER (
    PARTITION BY [PersonType]
    ORDER BY [FirstName], [LastName]
)
,[FirstName]
,[LastName]
,[BusinessEntityID]
,[PersonType]
,[NameStyle]
,[Title]
,[MiddleName]
,[Suffix]
,[EmailPromotion]
,[AdditionalContactInfo]
,[Demographics]
,[rowguid]
,[ModifiedDate]
FROM [AdventureWorks2019].[Person].[Person]
WHERE 1=1
ORDER BY [FirstName], [LastName]
--*/


/*----------  Select Distinct  ----------*/
/*
SELECT DISTINCT [Rank] = RANK()
OVER (
    PARTITION BY [JobTitle]
    ORDER BY [HireDate]
)
,[JobTitle]
,[Employee Number] = [BusinessEntityID]
,[NationalIDNumber]
,[LoginID]
,[OrganizationNode]
,[OrganizationLevel]
,[BirthDate]
,[MaritalStatus]
,[Gender]
,[HireDate]
,[SalariedFlag]
,[VacationHours]
,[SickLeaveHours]
,[CurrentFlag]
,[rowguid]
,[ModifiedDate]
FROM [AdventureWorks2019].[HumanResources].[Employee]
WHERE 1=1
ORDER BY [JobTitle]
--*/


--/*
SELECT [Idname] = DENSE_RANK()
OVER (
    PARTITION BY [FirstName]
    ORDER BY [FirstName], [LastName]
)
,[FirstName]
,[LastName]
,[BusinessEntityID]
,[PersonType]
,[NameStyle]
,[Title]
,[MiddleName]
,[Suffix]
,[EmailPromotion]
,[AdditionalContactInfo]
,[Demographics]
,[rowguid]
,[ModifiedDate]
FROM [AdventureWorks2019].[Person].[Person]
WHERE 1=1
ORDER BY [FirstName], [LastName]
--*/

