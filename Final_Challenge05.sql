
/*=============================================
=            Final Challenge #5              =
=============================================*/
/*
* 1.	First, GET today’s DATE.
* 2.  Calculate the first day of the current month by plugging the YEAR
*     and MONTH of today’s date into the DATEFROMPARTS function, along
*     with the number of the first day of the month (HINT –this is just as
*     obvious as it seems!)
* 3.  Use DATEADD to “add” a month to the value we derived in step 2 – now
*     we have the first day of next month.
* 4.  Now we can use DATEADD one more time, to subtract one day from the
*     first day of next month…which is the last day of this month!
* 5.  Finally, we can use DATEDIFF to calculate the difference in DAYs
*     between the current date and the end-of-month date.
** Note that today just happens to be May 1st
*/

SELECT
  [Today] =
    DATEFROMPARTS(
    YEAR(GETDATE())
    ,MONTH(GETDATE())
    ,DAY(GETDATE())
    )
  ,[1st Day] =
    DATEFROMPARTS(
    YEAR(GETDATE())
    ,MONTH(GETDATE())
    ,1
    )
  ,[Next Mo] =
    DATEADD(MONTH,1
      ,DATEFROMPARTS(
        YEAR(GETDATE())
        ,MONTH(GETDATE())
        ,1)
      )
  ,[Until Next Mo] =
    DATEDIFF(
       DAY
      ,DATEFROMPARTS(
        YEAR(GETDATE())
        ,MONTH(GETDATE())
        ,1
        )
      ,EOMONTH(
        GETDATE()
        )
      )

GO
/*=====  End of Final Challenge #5    ======*/