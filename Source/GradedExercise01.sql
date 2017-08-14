.echo on
.headers on

-- Name: GradedExcersize01.sql
-- Author: Jason Bergener
-- Date: August 14, 2017
-- Purpose: To demonstrate my ability to create and insert information into a table.
-- This table tracks the departure and arrival times of my drives from home to class.

drop table if exists drivetime;

create table drivetime(
	id int PRIMARY KEY,
	date text,
	departure int,
	arrival int
);

insert into drivetime values (1, "2017-08-07", 0700, 0730);
insert into drivetime values (2, "2017-08-08", 0705, 0736);
insert into drivetime values (3, "2017-08-09", 0715, 0756);
insert into drivetime values (4, "2017-08-10", 0713, 0754);
insert into drivetime values (5, "2017-08-11", 0703, 0732);
insert into drivetime values (6, "2017-08-14", 0710, 0739);

select date, (arrival - departure) as time from drivetime;