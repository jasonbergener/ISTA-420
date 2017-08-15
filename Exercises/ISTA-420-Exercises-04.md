#### MSSA Cohort 3
#### Course: ISTA-420
#### Lesson Plan: 04
#### Name: Jason Bergener
#### Date: August 10, 2017

1. What is the order number and the date of each order sold by each employee?
    ```sql
    select e.lastname, e.firstname, o.orderid, o.orderdate
    from employees e
    inner join orders o
    on e.employeeid=o.employeeid
    order by e.lastname;
    ```
1. List each territory by region.
    ```sql
    select t.territoryid, t.territorydescription, r.regiondescription
    from territories t
    left join region r
    on t.regionid=r.regionid
    order by t.regionid, t.territoryid;
    ```
1. What is the supplier name for each product alphabetically by supplier?
    ```sql
    select s.contactname, p.productname
    from suppliers s
    join products p
    on s.supplierid=p.supplierid
    order by s.contactname;
    ```
1. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the item?
    ```sql
    select o.orderdate, o.orderid, d.productid, d.quantity, d.unitprice
    from orders o 
    join order_details d
    on o.orderid=d.orderid
    where o.orderdate like "1998-05-05";
    ```
1. For every order on May 5, 1998, how many of each item was ordered giving the name of the item, and what was the price of the item?
    ```sql
    select o.orderdate, o.orderid, p.productname, d.quantity, d.unitprice
    from orders o
    join order_details d
    on o.orderid=d.orderid
    join products p
    on d.productid=p.productid
    where o.orderdate like "1998-05-05";
    ```
1. For every order in May, 1998, what was the customer's name and the shipper's name?
    ```sql
    select o.orderdate, o.orderid, c.companyname, s.companyname
    from orders o
    join customers c
    on o.customerid=c.customerid
    join shippers s
    on o.shipperid=s.shipperid
    where o.orderdate like “1998-05%”;
    ```
1. What is the customer's name and the employee's name for every order shipped to France?
    ```sql
    select o.orderid, c.companyname, e.lastname, e.firstname, o.shipcountry
    from orders o
    join customers c
    on o.customerid=c.customerid
    join employees e
    on o.employeeid=e.employeeid
    where o.shipcountry like “France”;
    ```
1. List the products by name that were shipped to Germany.
    ```sql
    select distinct p.productname, o.shipcountry
    from products p
    join order_details d
    on p.productid=d.productid
    join orders o
    on d.orderid=o.orderid
    where o.shipcountry like “Germany”
    order by p.productname;
    ```