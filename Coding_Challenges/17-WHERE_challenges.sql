USE [AdventureWorks2019]
GO

--/* #1
SELECT
    A.[PersonType]
  , A.[NameStyle]
  , A.[Title]
  , A.[FirstName]
  , A.[MiddleName]
  , A.[LastName]
  , A.[Suffix]
  , A.[EmailPromotion]
  , A.[Demographics]
FROM [Person].[Person] AS A
WHERE 1 = 1 AND A.[FirstName] = 'Pilar'
;
--*/

--/* #2
SELECT
    [AccountNumber]
  , [Name]
  , [CreditRating]
  , [PreferredVendorStatus]
  , [ActiveFlag]
  , [PurchasingWebServiceURL]
FROM [Purchasing].[Vendor] AS A
WHERE 1 = 1 AND A.[Name] = 'Northwind Traders'
;
--*/

--/* #3
SELECT
    [AccountNumber]
  , [Name]
  , [CreditRating]
  , [PreferredVendorStatus]
  , [ActiveFlag]
  , [PurchasingWebServiceURL]
FROM [Purchasing].[Vendor] AS A
WHERE 1 = 1
--AND A.[Name] = 'Northwind Traders'
AND A.[PreferredVendorStatus] = 1
;
--*/

/*
  Filename: ...: 17-WHERE_challenges.sql
  Date ........: 13-Jun-2022
  Time ........: 09:41
  Desc ........: From the where clause challenges
  Notes........:
    1. Select any rows from the “Person.Person” table where the value in
       the “FirstName” column is “Pilar”. Include all columns EXCEPT
       “BusinessEntityID”, “rowguid”, and “ModifiedDate” in your output.
    2. Select any rows from the “Purchasing.Vendor” table where the
       value in the “Name” column is “Northwind Traders”. Include all
       columns EXCEPT “BusinessEntityID” and “ModifiedDate” in your
       output.
    3. Modify your query from Exercise 2 by commenting out the WHERE
       statement, and then adding a new criterion that filters for
       preferred vendors only – that is to say, where the value in the
       “PreferredVendorStatus” column is 1.
*/



GO