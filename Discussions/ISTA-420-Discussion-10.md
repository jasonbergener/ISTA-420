#### MSSA Cohort 3
#### Course: ISTA-420
#### Lesson Plan: 10
#### Name: Jason Bergener
#### Date: August 22, 2017

1. What is a window function?  
**A window function is a function that, for each row, computes a scalar result value based on a calculation against a subset of the rows from the underlying query. The subset of rows is known as a window and is based on a window descriptor that relates to the current row. The syntax for window functions uses a clause called OVER, in which you provide the window specification.**
1. What does PARTITION do?  
**The window-partition clause (PARTITION BY) restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row.**
1. What does ORDER BY do?  
**The window-order clause (ORDER BY) defines ordering, but don’t confuse this with presentation ordering. In a window aggregate function, window ordering supports a frame specification. In a window ranking function, window ordering gives meaning to the rank.**
1. What does ROWS BETWEEN do?  
**A window-frame clause (ROWS BETWEEN \<top delimiter> AND \<bottom delimiter>) filters a frame, or a subset, of rows from the window partition between the two specified delimiters.**
1. What is a ranking window function? Why would you use it? Give an example.  
**You use ranking window functions to rank each row with respect to others in the window. T-SQL supports four ranking functions: ROW_NUMBER, RANK, DENSE_RANK, and NTILE.///ADD MORE HERE///**
1. What is an offset window function? Why would you use it? Give an example.  
**You use offset window functions to return an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame. T-SQL supports two pairs of offset functions: LAG and LEAD, and FIRST_VALUE and LAST_VALUE.///ADD MORE HERE///**
1. What do LEAD and LAG DO?  
**The LAG and LEAD functions support window partitions and window order clauses. There’s no relevance to window framing here. You use these functions to obtain an element from a row that is at a certain offset from the current row within the partition, based on the indicated ordering. The LAG function looks before the current row, and the LEAD function looks ahead. The first argument to the functions (which is mandatory) is the element you want to return; the second argument (optional) is the offset (1 if not specified); the third argument (optional) is the default value to return if there is no row at the requested offset (which is NULL if not specified otherwise).**
1. What do FIRST VALUE and LAST VALUE do?  
**You use the FIRST_VALUE and LAST_VALUE functions to return an element from the first and last rows in the window frame, respectively. Therefore, these functions support window-partition, window-order, and window-frame clauses. If you want the element from the first row in the window partition, use FIRST_VALUE with the window frame extent ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW. If you want the element from the last row in the window partition, use LAST_VALUE with the window frame extent ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING. Note that if you specify ORDER BY without a window-frame unit (such as ROWS), the bottom delimiter will by default be CURRENT ROW, and clearly that’s not what you want with LAST_VALUE.**
1. What is an aggregate window function? Why would you use it? Give an example.  
**You use aggregate window functions to aggregate the rows in the defined window. They support window-partition, window-order, and window-frame clauses.///ADD MORE HERE///**
1. What is a pivot table and what does it do?  
**Pivoting data involves rotating data from a state of rows to a state of columns, possibly aggregating values along the way. In many cases, the pivoting of data is handled by the presentation layer for purposes such as reporting.**