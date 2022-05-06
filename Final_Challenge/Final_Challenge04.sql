USE [AdventureWorks2019]
GO

SELECT
   [Entity ID] = Per.[BusinessEntityID]
  ,[Job Title] = ISNULL(Hre.[JobTitle], 'None')
  ,[Job Category] =
    CASE
      WHEN
        Hre.[JobTitle] LIKE '%Manager%'
        OR
        Hre.[JobTitle] LIKE '%President%'
        OR
        Hre.[JobTitle] LIKE '%Executive%'
          THEN 'Management'
      WHEN
        Hre.[JobTitle] LIKE '%Engineer%'
          THEN 'Engineering'
      WHEN
        Hre.[JobTitle] LIKE '%Production%'
          THEN 'Production'
      WHEN
        Hre.[JobTitle] LIKE '%Marketing%'
          THEN 'Marketing'
      WHEN
        Hre.[JobTitle] = 'Recruiter'
        OR
        Hre.[JobTitle] = 'Benefits Specialist'
        OR
        Hre.[JobTitle] = 'Human Resources Administrative Assistant'
          THEN 'Human Resources'
      WHEN
        Hre.[JobTitle] IS NULL
          THEN 'NA'
      ELSE 'Other'
    END
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
LEFT JOIN
  [HumanResources].[Employee] AS Hre
ON
  Per.[BusinessEntityID] = Hre.[BusinessEntityID]

WHERE
  Per.[PersonType] = 'SP'
OR
  LEFT(Adr.[PostalCode], 1) = '9'
AND
  LEN(Adr.[PostalCode]) = 5
AND
  Con.[Name] = 'United States'

GO

/*=============================================
=            Challenge 4                      =
=============================================*/

/**
Based on Ex3
1. Join in the HumanResources.Employee table to Person.Person on
   BusinessEntityID. Note that many people in the Person.Person table
   are not employees, and we don’t want to limit our output to just
   employees, so choose your join type accordingly.
2. Add the “JobTitle” field from HumanResources.Employee to our output.
   If it is NULL (as it will be for people in our Person.Person table
   who are not employees, return “None”.
3. Add a derived column, aliased as “JobCategory”, that returns
   different categories based on the value in the “JobTitle” column as
   follows:
- If the job title contains the words “Manager”, “President”, or
  “Executive”, return “Management”. Applying wildcards with LIKE could
  be a helpful approach here.
- If the job title contains the word “Engineer”, return “Engineering”.
- If the job title contains the word “Production”, return “Production”.
- If the job title contains the word “Marketing”, return “Marketing”.
- If the job title is NULL, return “NA”.
- If the job title is one of the following exact strings (NOT patterns),
  return “Human Resources”: “Recruiter”, “Benefits Specialist”, OR
  “Human Resources Administrative Assistant”. You could use a series of
  ORs here, but the IN keyword could be a nice shortcut.
- As a default case when none of the other conditions are true, return “Other”.
*/



/*=====  End of Challenge 4  ======*/