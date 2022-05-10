USE [AdventureWorks2019]
;

/*---------- section title   ----------*/
--/*
     SELECT [Name] = A.[FirstName] + ' ' + A.[LastName]
          , [Email] = B.[EmailAddress]
          , [Local_Phone] = REPLACE( RIGHT(C.[PhoneNumber], 12) , ' ', '-')
          , [Town] = E.[City]
       FROM [Person].[Person] AS A
       JOIN [Person].[EmailAddress] AS B
         ON A.[BusinessEntityID] = B.[BusinessEntityID]
       JOIN [Person].[PersonPhone] AS C
         ON A.[BusinessEntityID] = C.[BusinessEntityID]
       JOIN [Person].[BusinessEntityAddress] AS D
         ON A.[BusinessEntityID] = D.[BusinessEntityID]
       JOIN [Person].[Address] AS E
         ON D.[AddressID] = E.[AddressID]
      WHERE 1=1
        AND LEFT(REPLACE( RIGHT(C.[PhoneNumber], 12) , ' ', '-'), 3) = '206'
--*/

--Person.Address has AddressID matches Person.BusinessEntityAddress
--Person.BusinessEntityAddress matches Person.Person

/*
  Filename: ...: 55-JOINs_Exercise_2.sql
  Date ........: 09-May-2022
  Time ........: 18:13
  Desc ........: Joins Exercises part 2 of 2
  Notes........:
    1.
*/

GO