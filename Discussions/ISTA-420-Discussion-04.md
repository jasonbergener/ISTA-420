#### MSSA Cohort 3
#### Course: ISTA-420
#### Lesson Plan: 04
#### Name: Jason Bergener
#### Date: August 10, 2017

1. What is a data type? Why do we have data types?
   - **A data type is a particular kind of data item, as defined by the values it can take, the programming language used, or the operations that can be performed on it. We have data types because the data types have different limits and benefits. Choosing the right data types can help optimize a system.**
1. What is a collation? Name four elements of a collation.
   - **Collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity, and more. An example is `Latin1_General_CS_AS`. BIN is used to change sorting to binary.**
1. How would you strip whitespace from a string? For example, suppose you had “   Dave   " but wanted only “Dave".
   - **To strip whitespace from a string use a combination of LTRIM and RTRIM. For example:**
     ```sql
      select ltrim(rtrim(‘   Dave   ‘));
     ```
1. Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query.
    ```sql
        select name from college where name like ‘%institute%’;
    ```
1. How would you find out the index of the first space in a string? For example, the index of the first space in “Barack Hussein Obama" would be 7.
   - **To find the index of a character like the first space in a string, use CHARINDEX. For example:**
      ```sql
      select charindex(‘ ‘, ‘Barack Hussein Obama’);
      ```
1. How would you select just the first name in a list of the presidents. First names can be an arbitrary length, from “Cal" to “Benjamin."
   - **To select just the first name in a list of presidents with arbitrary first name lengths and the names are separated by spaces, use a combination of LEFT and CHARINDEX. For example:**
      ```sql
      select left(name, charindex(‘ ‘, name)) from presidents;
      ```
1. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries.
    ```sql
        select dateadd(day, 30, orderdate) as nextpayment from orders;
    ```
1. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. Write a select query that does this.
    ```sql
        select datediff(day, getdate(), dateof16thbirthday);
    ```
1. What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins.
   - **Getdate() returns the current date and time, which is perfect for this example. If you want to just return the date, you can cast the getdate() return as date like this, `select cast(getdate() as date);`.**