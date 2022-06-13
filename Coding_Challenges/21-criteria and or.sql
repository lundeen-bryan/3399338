USE [AdventureWorks2019]
GO

--/* #1
SELECT
[PersonType]
,[Title]
,[FirstName]
,[LastName]
FROM [AdventureWorks2019].[Person].[Person]
WHERE 1=1
AND [FirstName] = 'Laura'
AND [LastName] = 'Norman'
--*/

--/* #2
SELECT
    [PersonType]
  , [Title]
  , [FirstName]
  , [LastName]
FROM
    [AdventureWorks2019].[Person].[Person]
WHERE
    1 = 1
    AND [FirstName] = 'Laura'
    AND [LastName] = 'Norman'
    AND [PersonType] IN('SP', 'EM', 'VC')
--*/


/*  [BusinessEntityID]
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
,[ModifiedDate] */