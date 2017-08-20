#### MSSA Cohort 3
#### Course: ISTA-420
#### Lesson Plan: 03
#### Name: Jason Bergener
#### Date: August 9, 2017

1. List the order of execution of a SQL query.  
**The order of execution of an SQL query is FROM, WHERE, GROUP BY, HAVING, SELECT, ORDER BY.**
1. What does the from clause do?  
**In the FROM clause, you specify the names of the tables you want to query and table operators that operate on those tables.**
1. What does the where clause do?  
**In the WHERE clause, you specify a predicate or logical expression to filter the rows returned by the FROM phase. Only rows for which the logical expression evaluates to TRUE are returned by the WHERE phase to the subsequent logical query processing phase.**
1. What does the group by clause do?  
**You can use the GROUP BY phase to arrange the rows returned by the previous logical query processing phase in groups. The groups are determined by the elements you specify in the GROUP BY clause.**
1. What does the having clause do?  
**Whereas the WHERE clause is a row filter, the HAVING clause is a group filter. Only groups for which the HAVING predicate evaluates to TRUE are returned by the HAVING phase to the next logical query processing phase. Groups for which the predicate evaluates to FALSE or UNKNOWN are discarded.**
1. What does the select clause do?  
**The SELECT clause is where you specify the attributes (columns) you want to return in the result table of the query. You can base the expressions in the SELECT list on attributes from the queried tables, with or without further manipulation.**
1. What does the distinct keyword do?  
**SQL provides the means to remove duplicates using the DISTINCT clause.**
1. What does the order by clause do?  
**You use the ORDER BY clause to sort the rows in the output for presentation purposes.**
1. What does the limit clause do? This is not in the book.  
**The limit clause limits the results to the number passed to the clause. For example, limit 5 will limit the results of a query to the first 5 rows. This clause is best to use in conjunction with ORDER BY.**
1. What does the top clause do?  
**The TOP filter is a proprietary T-SQL feature you can use to limit the number or percentage of rows your query returns. It relies on two elements as part of its specification: one is the number or percent of rows to return, and the other is the ordering.**
1. What do the offset . . . fetch . . . clauses do?  
**The OFFSET-FETCH filter is considered an extension to the ORDER BY clause. With the OFFSET clause you indicate how many rows to skip, and with the FETCH clause you indicate how many rows to filter after the skipped rows.**