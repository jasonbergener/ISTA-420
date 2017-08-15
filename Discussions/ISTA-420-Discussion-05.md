#### MSSA Cohort 3
#### Course: ISTA-420
#### Lesson Plan: 05
#### Name: Jason Bergener
#### Date: August 14, 2017

1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.
    - **We join two or more tables together because we need information from more than one table to give the desired output.**
1. Describe in your own words the output from an inner join.
    - **An inner join returns rows that match in both tables.**
1. Describe in your own words the output from an outer join.
    - **An outer join’s returns differ based on if it is LEFT, RIGHT, or FULL. A full outer join acts similar to a cross join in that all rows are returned from both tables. The difference is that when the filter from the ON clause is evaluated for non-matching rows, the missing element is returned as NULL. A left outer join follows this model, but instead of preserving all rows from both tables, it only preserves all the rows from the left table. A right outer join is similar to the left outer join, but preserves all rows of the right table.**
1. Describe in your own words the output from an cross join.
    - **A cross join returns all rows from both tables (no filtering).**
1. A convenient mnemonic for remembering the various joins is “Ohio." Why is this true?
    - **I couldn't find any reference to this. My best guess is one of the Os stands for outer and the I stands for inner.**
1. Give an example of a composite join.
    - **An example of a composite join would be select C.name, O.number from sales.customers as C inner join sales.orders as O on customers.id=orders.custid and costomers.address != orders.shippingaddress;**
1. What is the difference between the following two queries? The business problem is “How many orders do we have from each customer?"
    ```
    ================first query===============
    SELECT C.custid, COUNT(*) AS numorders
    FROM Sales.Customers AS C
    LEFT OUTER JOIN Sales.Orders AS O
    ON C.custid = O.custid
    GROUP BY C.custid;
    ================second query===============
    SELECT C.custid, COUNT(O.orderid) AS numorders
    FROM Sales.Customers AS C
    LEFT OUTER JOIN Sales.Orders AS O
    ON C.custid = O.custid
    GROUP BY C.custid;
    ```
    - **The first query will yield an incorrect result because it will be counting the customers, whether they placed an order or not. A customer that placed 5 orders will have the correct result, but a customer that placed none will still show a count of 1. The second query only counts the orders that were actually placed and returns the correct results.**
1. What might be one reason the following query does not return the column custID in this query?
    ```
    SELECT C.custid, C.companyname, O.orderid, O.orderdate
    FROM Sales.Customers AS C
    LEFT OUTER JOIN Sales.Orders AS O
    ON C.custid = O.custid
    WHERE O.orderdate >= '20160101';
    ```
    - **In the event that no orders had an orderdate of ‘20160101’.**
