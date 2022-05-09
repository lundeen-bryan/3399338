USE [AdventureWorks2019];


/*----------  Concatenation  ----------*/


/*
SELECT [By Last Name] = ROW_NUMBER()
OVER (
    PARTITION BY [LastName]
    ORDER BY [FirstName], [LastName]
)
, [Full Name] =
     CASE
        WHEN [Title] IS NULL THEN [FirstName] + ' ' +  [LastName]
        ELSE [Title] + ' ' + [FirstName] + ' ' +  [LastName]
     END
, [Employee Num] = [BusinessEntityID]
, [Title]
, [PersonType]
, [NameStyle]
, [Suffix]
, [EmailPromotion]
, [AdditionalContactInfo]
, [Demographics]
, [rowguid]
, [ModifiedDate]
FROM [AdventureWorks2019].[Person].[Person]
WHERE 1=1
ORDER BY [LastName]
--*/


/*
SELECT COUNT(*)
FROM [AdventureWorks2019].[Sales].[SalesPerson]
--*/

/* if not using FORMAT then multiply by 1.0 to get decimal */
/*
SELECT [By Sales YTD] = ROW_NUMBER()
OVER (
    PARTITION BY [CommissionPct]
    ORDER BY [SalesYTD]
)
,[Commish YTD] = FORMAT([SalesYTD] * [CommissionPct], '$#,###.00')
,[Income YTD] = FORMAT(([SalesYTD] * [CommissionPct]) + [Bonus], '$#,###.00')
,[Bonus Pct] =
     CASE
         WHEN ([Bonus] / [SalesYTD]) < 0.01
             THEN 'none'
         ELSE FORMAT(([Bonus] / [SalesYTD]) * 100, '###.0%')
     END
,[SalesYTD]
,[CommissionPct]
,[Bonus]
,[BusinessEntityID]
,[TerritoryID]
,[SalesQuota]
,[SalesLastYear]
,[rowguid]
,[ModifiedDate]
FROM [AdventureWorks2019].[Sales].[SalesPerson]
WHERE 1=1
ORDER BY [SalesYTD]
--*/

/*
SELECT COUNT([BusinessEntityID]) FROM [AdventureWorks2019].[Person].[PersonPhone]
SELECT DISTINCT COUNT([PhoneNumber]) FROM [AdventureWorks2019].[Person].[PersonPhone]
/* 19,972 rows each has all distinct entity IDs and a distinct phone number for each entity */
--*/

/*
SELECT [By Person] = ROW_NUMBER()
OVER (
    PARTITION BY [BusinessEntityID]
    ORDER BY [BusinessEntityID]
)
,[Area Code] = LEFT(RIGHT([PhoneNumber], 12), 3)
,[Phone] = '(' + SUBSTRING(RIGHT([PhoneNumber], 12), 1, 3) + ') ' + RIGHT([PhoneNumber], 8)
,[BusinessEntityID]
,[PhoneNumberTypeID]
,[ModifiedDate]
FROM [AdventureWorks2019].[Person].[PersonPhone]
WHERE 1=1
ORDER BY [PhoneNumber]
--*/

/*
SELECT
[Same Domain] =
CASE
    WHEN RIGHT([EmailAddress], 20) = '@adventure-works.com'
        THEN 'Yes'
    ELSE 'No'
END
,[User] = LEFT([EmailAddress], LEN([EmailAddress]) - 20)
,[EmailAddress]
,[EmailAddressID]
, [BusinessEntityID]
,[rowguid]
,[ModifiedDate]
FROM [AdventureWorks2019].[Person].[EmailAddress]
WHERE 1=1
ORDER BY [Same Domain]
--*/

/* Count all that are not using company domain for email
SELECT COUNT(*)
FROM [AdventureWorks2019].[Person].[EmailAddress]
WHERE RIGHT([EmailAddress], 20) != '@adventure-works.com'
--*/

/* pad the ID num so it has 10 digits
SELECT
[National ID Number] = RIGHT('0000000000' + [NationalIDNumber], 10)
FROM [AdventureWorks2019].[HumanResources].[Employee]
WHERE 1=1
ORDER BY [NationalIDNumber]
--*/

/* Replace function
     SELECT [Description]
          , [No Commas] = REPLACE(REPLACE([Description], ',', '') , '.', '')
       FROM [AdventureWorks2019].[Production].[ProductDescription]
      WHERE 1=1
--*/
