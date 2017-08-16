#### MSSA Cohort 3
#### Course: ISTA-420
#### Lesson Plan: 06
#### Name: Jason Bergener
#### Date: August 15, 2017

1. In your own words, what is a subquery?
    - **A subquery is a query that is nested inside another query.**
1. In your own words, what is a self-contained subquery?
    - **A self-contained subquery does not have any dependencies on tables from the outer query.**
1. In your own words, what is a correlated subquery?
    - **A correlated subquery is dependent on the tables from the outer query.**
1. Give an example of a subquery that returns a single value. When would you use this kind of subquery?
    - **The below query contains an example of a subquery that returns a single value (an employee ID for the employee with the most orders). This kind of subquery would be used when the desired result is only one value.**
    ```sql
        select firstname + ' ' + lastname + ' is Employee of the Month!' as winner
        from hr.Employees
        where empid=
        (select TOP 1 empid
        from sales.orders
        group by empid
        order by count(*) desc);
    ```
1.	Give an example of a subquery that returns multiple values. When would you use this kind of subquery?
    - **The below query contains an example of a subquery that returns multiple values (employees that made no sales). This kind of subquery would be used to filter using a list.**
      ```sql
        select firstname + ' ' + lastname + ' had no sales in May, 2016.' as counsel
        from hr.Employees
        where empid NOT IN
        (select empid
        from sales.orders
		where orderdate like '2016-05%');
      ```
1.	Give an example of a subquery that returns table values. When would you use this kind of subquery?
    - **The below query contains a subquery that returns table values. This kind of subquery would be to simplify solutions using a modular approach. It would also help you circumvent certain restrictions in the language, such as the inability to refer to column aliases assigned in the select clause in query clauses that are logically processed before the select clause**
      ```sql
        select OrderYear, count(distinct custid) as NumCust
        from (select year(orderdate) as OrderYear, custid
        from sales.orders) as x
        group by OrderYear;
      ```
1. What does the exists predicate do? Give an example.
    - **The exists predicate returns true for each row that is returned from the query that follows it. For example, in the following query the exists predicate returns true if an employee has an order in May, 2016.**
      ```sql
        select firstname + ' ' + lastname + ' had sales in May, 2016.' as award
        from hr.Employees e
        where exists
        (select empid
        from sales.orders o
		where e.empid=o.empid
		and orderdate like '2016-05%');
      ```
1. What happens if we use the not operator before a predicate? Give an example.
    - **Using the not operator before the exists predicate returns true for each row that isn't returned from the query that follows it. For example, in the following query the not exists predicate returns true if an employee has no orders in May, 2016.**
      ```sql
        select firstname + ' ' + lastname + ' had no sales in May, 2016.' as counsel
        from hr.Employees e
        where not exists
        (select empid
        from sales.orders o
		where e.empid=o.empid
		and orderdate like '2016-05%');
      ```
1. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.
    - **The exists predicate, with or without the not operator returns one of two possible values, either true or false. Exists uses two-valued logic and not three-valued logic. If you think about it, there’s no situation where it’s unknown whether a query returns any rows.**
1. How would you a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.
    - **You would query one instance of the view to display the yearly sales for each year and a correlated subquery against a second instance of the view to calculate the running sum of total sales. For example:**
      ```sql
        select orderyear as Year, qty as Sales,
        (select sum(view2.qty)
        from Sales.OrderTotalsByYear as view2
        where view2.orderyear <= view1.orderyear) as RunningSales
        from Sales.OrderTotalsByYear as view1
        order by orderyear;
      ```