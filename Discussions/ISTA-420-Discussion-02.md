#### MSSA Cohort 3
#### Course: ISTA-420
#### Lesson Plan: 02
#### Name: Jason Bergener
#### Date: August 8, 2017

1. What is a primary key constraint? What two other constraints is it equivalent to?  
**A primary-key constraint enforces the uniqueness of rows and also disallows NULLs in the constraint attributes. Each unique set of values in the constraint attributes can appear only once in the table—in other words, only in one row. An attempt to define a primary-key constraint on a column that allows NULLs will be rejected by the RDBMS. Each table can have only one primary key. The two constraints a primary key is equivalent to are Unique and Not Null.**
1. What is a nullability constraint? What does it prevent?  
**A nullability constraint ensures that all values are known. It prevents inserting a row without providing data for the constrained column.**
1. What is a unique constraint? What does it prevent?  
**A unique constraint prevents duplicate data in a column. It is supposed to ignore null, but SQL Server treats two nulls as equal so you must allow null when creating a unique constraint or also set a nullability constraint.**
1. What is a foreign key constraint? What does it allow?  
**A foreign-key enforces referential integrity. This constraint is defined on one or more attributes in what’s called the referencing table and points to candidate-key (primary-key or unique-constraint) attributes in what’s called the referenced table. Note that the referencing and referenced tables can be one and the same. The foreign key’s purpose is to restrict the values allowed in the foreign-key columns to those that exist in the referenced columns.**
1. What is a check constraint? What does it allow?  
**You can use a check constraint to define a predicate that a row must meet to be entered into the table or to be modified.**
1. What is a default constraint? What does it allow?  
**A default constraint is associated with a particular attribute. It’s an expression that is used as the default value when an explicit value is not specified for the attribute when a row is inserted.**
1. What is domain integrity? This is not in your text book, but it's important.  
**Domain integrity specifies that all columns in a relational database must be declared upon a defined domain. Basically, if you have a Human Resources database, it should contain human resource data, not car parts. Another definition is that domain integrity enforces the value type integrity in columns. Integer columns must only contain integers.**
1. What is the difference between the where and the having clauses? How are they alike?  
**The where clause applies a filter to the rows returned by the query. The having clause applies a filter to the groups created by the group by clause. They are alike because they both filter the results.**
1. What SQL operator has the highest precedence? What SQL operator has the lowest precedence?  
**Parentheses has the highest precedence and assignment (=) has the lowest.**
1. Yes or no: In the SQL standard, is NULL equal to NULL? Why or why not?  
**In the SQL standard, null is unknown, and thus cannot be equal to anything. So according to the SQL standard, NULL is not equal to NULL. However, the SQL Server implementation treats multiple NULLs as if they were equal.**