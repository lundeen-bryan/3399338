USE [AdventureWorks2019]
GO

--/* #1
SELECT *
FROM
    [AdventureWorks2019].[HumanResources].[Employee]
WHERE
    1 = 1
    AND [Gender] = 'F'
    AND (
        [JobTitle] = 'Network Manager'
        OR [JobTitle] = 'Application Specialist'
    )
--*/

--/* #2
SELECT *
FROM
    [AdventureWorks2019].[HumanResources].[Employee]
WHERE
    1 = 1
    AND [Gender] = 'F'
    AND [JobTitle] IN ('Network Manager', 'Application Specialist')
--*/

--/* #3
SELECT
    [Person Type] = A.[PersonType]
  , A.[Title]
  , [First Name] = A.[FirstName]
  , [middle name] = A.[MiddleName]
  , [last name] = A.[LastName]
  , [Suffix]
FROM [Person].[Person] AS A
WHERE
    1 = 1
    AND [PersonType] = 'EM'
    AND (
        [Title] IS NULL
        OR [MiddleName] IS NULL
    )
;
--*/

--/* #Bonus
SELECT
    [Person Type] = A.[PersonType]
  , A.[Title]
  , [First Name] = A.[FirstName]
  , [middle name] = A.[MiddleName]
  , [last name] = A.[LastName]
  , [Suffix]
FROM [Person].[Person] AS A
WHERE
    1 = 1
    AND [PersonType] IN('EM', 'SP')
    AND (
        [Title] IS NULL
        OR [MiddleName] IS NULL
        OR [Suffix] IS NULL
    )
;
--*/
