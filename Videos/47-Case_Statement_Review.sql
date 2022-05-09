/* this works */
USE [AdventureWorks2019];
GO

/*
     SELECT [Title] = A.[JobTitle]
          , [JobCategory] = CASE WHEN [JobTitle] LIKE '%Production%'
                                 THEN 'Production'
                                 WHEN [JobTitle] LIKE '%Manager%'
                                 THEN 'Management'
                                 WHEN [JobTitle] LIKE '%President%'
                                 THEN 'President'
                                 ELSE 'Other'
                            END
       FROM [HumanResources].[Employee] AS A
      WHERE 1=1
   ORDER BY [Title]
;
--*/

--/*
     SELECT [OdrDate] = B.[OrderDate]
          , [CurrentDate] = CAST('07-01-2012' AS DATE)
          , [ElapsedDays] = DATEDIFF(DAY, B.[OrderDate], CAST('07-31-2013' AS DATE))
          , [Aging_Bucket] = CASE WHEN DATEDIFF(DAY, B.[OrderDate], CAST('07-31-2013' AS DATE)) = 0
                                  THEN '0'
                                  WHEN DATEDIFF(DAY, B.[OrderDate], CAST('07-31-2013' AS DATE)) < 5
                                  THEN STR(DATEDIFF(DAY, B.[OrderDate], CAST('07-31-2013' AS DATE)))
                                  WHEN DATEDIFF(DAY, B.[OrderDate], CAST('07-31-2013' AS DATE)) BETWEEN 5
                                                                                                    AND 10
                                  THEN '5 - 10'
                                  WHEN DATEDIFF(DAY, B.[OrderDate], CAST('07-31-2013' AS DATE)) BETWEEN 10
                                                                                                    AND 20
                                  THEN '10 - 19'
                                  ELSE '20+'
                             END
       FROM [Sales].[SalesOrderHeader] AS B
      WHERE 1=1
        AND [OrderDate]BETWEEN CAST('07-02-2013' AS DATE)
        AND CAST('07-31-2013' AS DATE)
   ORDER BY [ElapsedDays] ASC
;
--*/

