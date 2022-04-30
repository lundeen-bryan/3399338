/*=============================================
=            Challenge 3            =
=============================================*/

/**
11.	BusinessEntityID, from Person.Person
12.	PersonType, from Person.Person
13. A derived column, aliased as “FullName”, that combines the first,
    last, and middle names from Person.Person.
    - There should be exactly one space between each of the names.
    - If “MiddleName” is NULL and you try to “add” it to the other two
      names, the result will be NULL, which isn’t what you want.
    - You could use ISNULL to return an empty string if the middle name
      is NULL, but then you’d end up with an extra space between first
      and last name – a space we would have needed if we had a middle
      name to work with.
    - So what we really need is to apply conditional, IF/THEN type
      logic; if middle name is NULL, we just need a space between first
      name and last name. If not, then we need a space, the middle name,
      and then another space. See if you can accomplish this with a CASE
      statement.
14.	The “AddressLine1” field from Person.Address; alias this as “Address”.
15.	The “City” field from Person.Address
16.	The “PostalCode” field from Person.Address
17.	The “Name” field from Person.StateProvince; alias this as “State”.
18.	The “Name” field from Person.CountryRegion; alias this as “Country”.

Only return rows where person type (from Person.Person) is “SP”, OR the
postal code begins with a “9” AND the postal code is exactly 5
characters long AND the country (i.e., “Name” from Person.CountryRegion)
is “United States”.
*/

USE [AdventureWorks2019]
GO

SELECT
   [Entity ID] = Per.[BusinessEntityID]
  ,[Type] = Per.[PersonType]
  ,[Full Name] =
    CASE --Test for any name part being null
      WHEN Per.[MiddleName] IS NULL
        THEN Per.[FirstName] + ' ' + Per.[LastName]
      WHEN Per.[FirstName] IS NULL
        THEN Per.[MiddleName] + ' ' + Per.[LastName]
      WHEN Per.[LastName] IS NULL
        THEN Per.[FirstName] + ' ' + Per.[MiddleName]
      ELSE Per.[FirstName] + ' ' + Per.[MiddleName] + ' ' + Per.[LastName]
    END
  ,[Address] = Adr.[AddressLine1]
  ,[City] = Adr.[City]
  ,[PostalCode] = Adr.[PostalCode]
  ,[State] = Sta.[Name]
  ,[Country] = Con.[Name]

FROM
  [Person].[Person] AS Per
LEFT JOIN
  [Person].[BusinessEntityAddress] AS BA
ON
  Per.[BusinessEntityID] = BA.[BusinessEntityID]
LEFT JOIN
  [Person].[Address] AS Adr
ON
  BA.[AddressID] = Adr.[AddressID]
LEFT JOIN
  [Person].[StateProvince] AS Sta
ON
  Adr.[StateProvinceID] = Sta.[StateProvinceID]
LEFT JOIN
  [Person].[CountryRegion] AS Con
ON
  Sta.[CountryRegionCode] = Con.[CountryRegionCode]

WHERE
  Per.[PersonType] = 'SP'
OR
  LEFT(Adr.[PostalCode], 1) = '9'
AND
  LEN(Adr.[PostalCode]) = 5
AND
  Con.[Name] = 'United States'

GO

/*=====  End of Challenge 3  ======*/