USE [AdventureWorks2019]
GO

/* examples from course
SELECT
    [BusinessEntityID]
  , [TerritoryID]
  , [SalesQuota]
  , [Bonus]
  , [CommissionPct]
  , [SalesYTD]
  , [SalesLastYear]
  , [rowguid]
  , [ModifiedDate]
FROM [Sales].[SalesPerson] AS A
WHERE 1 = 1
AND A.[SalesQuota] != 250000
OR A.[SalesQuota] IS NOT NULL
;
--*/

--/* #1 returns 1488 rows
SELECT
       [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[ModifiedDate]
FROM
 [Person].[Person] AS A
WHERE 1=1
AND A.[PersonType] != 'IN'
;
--*/

--/* #2
SELECT
       [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[ModifiedDate]
FROM
 [Person].[Person] AS A
WHERE 1=1
AND A.[Title] IS NOT NULL
;
--*/

--/* #3 returns 8,499 rows
SELECT
    [PersonType]
  , [NameStyle]
  , [Title]
  , [FirstName]
  , [MiddleName]
  , [LastName]
  , [Suffix]
  , [EmailPromotion]
  , [AdditionalContactInfo]
  , [Demographics]
  , [ModifiedDate]
FROM [Person].[Person] AS A
WHERE 1 = 1 AND A.[MiddleName] IS NULL
;
--*/

--/* Bonus
SELECT
       [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[ModifiedDate]
FROM
 [Person].[Person] AS A
WHERE 1=1
AND A.[Title] != 'Mr.'
OR A.[Title] IS NULL
;
--*/


/*
  Filename: ...: 18-Null.sql
  Date ........: 13-Jun-2022
  Time ........: 10:26
  Desc ........: Null values
  Notes........:
    1. Select any records from the “Person.Person” where the person type
       is not equal to “IN”. Do not include the “BusinessEntityID” and
       “rowguid” fields in your output.
    2. Select all people from the “Person.Person” who have a “Title”. Do
       not include the “BusinessEntityID” and “rowguid” fields in your
       output.
    3. Select all people from the “Person.Person” who do NOT have a
       middle name listed. Do not include the “BusinessEntityID” and
       “rowguid” fields in your output.
    Bonus: Select all people from the “Person.Person” who do NOT have a
    title of “Mr.”. Make sure to include NULL values in your result.
*/



GO