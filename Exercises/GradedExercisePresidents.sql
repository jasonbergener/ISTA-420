--Author: Jason Bergener
--Date: 20170906
--Graded Exercise using the presidents.csv and TSQLV4 database

drop table if exists dbo.Presidents;

create table dbo.Presidents
(
President varchar(100) not null,
Took_Office varchar(100),
Left_Office varchar(100),
Party varchar(100),
Home_State varchar(100)
);

bulk insert dbo.Presidents from 'c:\presidents.csv'
	with
	(
		datafiletype = 'char',
		fieldterminator = ',',
		rowterminator = '\n'
	);

--1
delete from dbo.Presidents
  output
    deleted.President,
    deleted.Took_Office,
    deleted.Left_Office,
    deleted.Party,
	deleted.Home_State
where President = 'President';

alter table dbo.Presidents add constraint President primary key (President);

--2
update dbo.Presidents
	set Left_Office = '20/01/2017'
		output
			inserted.President,
    		inserted.Took_Office,
			deleted.Left_Office as Old_Left_Office,
    		inserted.Left_Office as New_Left_Office,
    		inserted.Party,
			inserted.Home_State
	where President = 'Barack Obama';

--3
insert into dbo.Presidents
	output
		inserted.President,
    	inserted.Took_Office,
    	inserted.Left_Office as New_Left_Office,
    	inserted.Party,
		inserted.Home_State
	values ('Donald J. Trump','20/01/2017','current','Republican','New York');

--4
select distinct home_state, party, 
Count(party) over (partition by party
order by home_state) as NumParty
from dbo.Presidents
order by Home_State;

--5
select * from dbo.Presidents where isdate(took_office)=0 or isdate(Left_Office)=0;

--6
select distinct e.city
from hr.Employees e
inner join sales.Customers c
on e.city = c.city;

--7
select distinct e.city
from hr.Employees e
left join sales.Customers c
on e.city = c.city
where c.city is null;

--8
DROP VIEW IF EXISTS dbo.USAPeople;
go

CREATE VIEW dbo.USAPeople
AS

select contactname as name, role = 'Customer', address, city, postalcode
from Sales.Customers
where country = 'USA'
union
select concat (lastname, ', ', firstname) as name, role = 'Employee', address, city, postalcode
from HR.Employees
where country = 'USA';
go

--9
select * from dbo.USAPeople order by name;

--10
-- Perform an analysis of employee sales. List the employees ranked

-- by their total sales from hghest sales to lowest, and for

-- each employee state the percentage of each order that the

-- amount of the order bears to that employee's total sales.

--  Colums should be employee name, employee id, order id, vlu, total value, and pct

-- Example: Yael Peled, 4, 10767, 28.00, 232890.87, 	0.60344827586206896551724137