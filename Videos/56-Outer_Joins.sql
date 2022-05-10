USE [AdventureWorks2019];

--/*
SELECT
 A.[BusinessEntityID]
,A.[FirstName]
,A.[LastName]
,B.[JobTitle]
,B.[VacationHours]
,B.[SickLeaveHours]
FROM [Person].[Person] AS A
LEFT OUTER JOIN
 [HumanResources].[Employee] AS B
ON
 A.[BusinessEntityID] = B.[BusinessEntityID]
WHERE 1=1
AND A.[FirstName] = 'John'

--*/

