#### MSSA Cohort 3
#### Course: ISTA-420
#### Lesson Plan: 01
#### Name: Jason Bergener
#### Date: August 7, 2017

1. Give an informal definition of database as used in the expression "relational database management
system."
    - **When a database is referred to by its capabilities like "relational database management system", it is usually in reference to the software.**
1. Give an informal definition of database as used in the expression “Human Resources database."
    - **When a database is referred to by its contents like "Human Resources database", it is usually in reference to the data in the database.**
1. Give an informal definition of entity integrity.
    - **Entity integrity is ensuring that each row is unique.**
1. Give an informal definition of referential integrity.
    - **Referential integrity is ensuring that attributes with foreign keys contain only data that appears in the referencing key's attributes.**
1. What is a relation as defined in the textbook? A one word answer to this question is sufficient.
    - **A relation is a set as defined by the textbook.**
1. Is this table in first normal form? Why or why not? If it is not, how would you change it?
    ```sql
    create table faculty (
      facID int primary key,
      facName text,
      facCreds text);
    ```
    | facID | facName          | facCreds          |
    |-------|------------------|-------------------|
    | 1     | Alan Alda        | BA, MA            |
    | 2     | Bridgette Bardot | BS, MS, PhD       |
    | 3     | Casey Cason      | AA, BBA, MBA, DEd |
    - **This table is not in the first normal form. Each row is identified by a unique primary key, but the names and credentials are not atomic. To be in first normal form, the names should be broken down by firstName, lastName, and the credentials should be referenced using foreign keys that point to a separate table for credentials.**
1. Is this table in second normal form? Why or why not? If it is not, how would you change it?
    ```sql
    create table pets (
      ownerID int primary key,
      petID int primary key,
      ownerFirstName text,
      ownerLastName text,
      petName text,
      petType text);
    ```
    | ownerID | petID | ownerFirstName | ownerLastName | petName  | petType         |
    |---------|-------|----------------|---------------|----------|-----------------|
    | 1       | 1     | Dom            | Delouise      | Rex      | German Shepherd |
    | 1       | 2     | Dom            | Delouse       | Lacy     | Border Collie   |
    | 2       | 3     | Emilio         | Estevez       | Midnight | Persian Cat     |
    - **This table is not in the second normal form because the non-key attributes do not depend on the entire primary key. For example, you can use ownerID alone to find ownerFirstName.**
1. Is this table in third normal form? Why or why not? If it is not, how would you change it?
    ```sql
    create table friends (
      friendID int primary key,
      friendName text,
      friendStreet text,
      friendCity text,
      friendState text,
      friendZip text);
    ```
    | ID | FirstName | LastName  | Street               | City     | State | Zip   |
    |----|-----------|-----------|----------------------|----------|-------|-------|
    | 1  | Fred      | Flinstone | 123 Rock Quarry Rd   | Bedrock  | GA    | 31905 |
    | 2  | Greta     | Garbo     | 456 Starlit Ave      | Paris    | FL    | 30019 |
    | 3  | Harry     | Houdini   | 789 Hidden Glen Lane | Alcatraz | CA    | 00000 |
    - **This table is not in the third normal form because some of the address information is dependent on itself and should be moved to a separate table (city and state are dependent on ZIP). A new table should be created with ZIP as the primary key with city and state attributes. ZIP should remain in the original table as a foreign key.**
1. What is an OLTP database? What operations is it optimized for?
    - **The primary focus of an online transactional processing database is data entry and not reporting; transactions mainly insert, update, and delete data.**
1. What is a star schema? What operations is it optimized for?
    - **The star schema is designed based on a fact table which contains the elements of interest; for example, quarterly sales. Surrounding the fact table are dimension tables that represent relevant subjects. Examples of dimensions for a sales fact table would be product, time, and location. Star schema are optimized for data analysis.**
