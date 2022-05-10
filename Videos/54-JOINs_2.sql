USE [AdventureWorks2019]
;

/*---------- section title   ----------*/
--/*
     SELECT [ID] = A.[BusinessEntityID]
          , [Name] = B.[FirstName] + ' ' + B.[LastName]
          , A.[TerritoryID]
          , D.[Group]
          , D.[Name]
          , C.[EmailAddress]
          , A.[SalesQuota]
          , A.[CommissionPct]
          , A.[SalesYTD]
          , A.[SalesLastYear]
          , D.[SalesYTD]
          , D.[SalesLastYear]
          , D.[CostYTD]
          , D.[CostLastYear]
       FROM [Sales].[SalesPerson] AS A
       JOIN [Person].[Person] AS B
         ON A.[BusinessEntityID] = B.[BusinessEntityID]
       JOIN [Person].[EmailAddress] AS C
         ON A.[BusinessEntityID] = C.[BusinessEntityID]
       JOIN [Sales].[SalesTerritory] AS D
         ON A.[TerritoryID] = D.[TerritoryID]
     WHERE 1=1
   ORDER BY D.[TerritoryID]

--*/

--/*
SELECT
 [TerritoryID]
FROM
 [Sales].[SalesTerritory]
WHERE 1=1
;
--*/

