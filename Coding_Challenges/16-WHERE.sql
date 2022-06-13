--/*
     SELECT [BusinessEntityID]
          , [NationalIDNumber]
          , [LoginID]
          , [OrganizationNode]
          , [OrganizationLevel]
          , [JobTitle]
          , [BirthDate]
          , [MaritalStatus]
          , [Gender]
          , [HireDate]
          , [SalariedFlag]
          , [VacationHours]
          , [SickLeaveHours]
          , [CurrentFlag]
          , [rowguid]
          , [ModifiedDate]
       FROM [HumanResources].[Employee] AS A
      WHERE 1=1
      AND [SalariedFlag] = 0
--AND [JobTitle] = 'Research and Development Manager'
;
--*/


/*
  Filename: ...: 16-WHERE.sql
  Date ........: 13-Jun-2022
  Time ........: 09:20
  Desc ........: Exercises on the WHERE clause
  Notes........:
    1.
*/



GO