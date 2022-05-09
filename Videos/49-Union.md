# Note On Union
<!-- NOTE: Make sure the first time you add the title that you use all lowercase and separate each word with a hyphen. -->
<!--       Then after you get to the end of the document you can come back and edit the title. -->

## Unions

When we're doing a union then we have to make sure that the number of columns matches. This will merge those tables and when row values match, it will only keep that one row, if however, if we add a column that indicates where the data came from between the two tables, then it will keep all rows and show where the data came from. This ends up showing us some duplicate rows.

So let's say I am merging the patient_status table with the admissions table. Then if we use union it will have multiple entries for Admissions rather than just one.

Union is a lot like PowerQuery's Append command.
