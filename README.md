# CIS355
## WHERE TO FIND OUR DATABASE
Our SQL Database can be found in the CIS-355 Microsoft SQL Server Management Studio server
>Database Name: ValleyVinyardsDaveIanTanner
## DESCRIPTION OF OUR IMPLEMENTATION:
To do this project we created an SQL database to store our data in. We used two separate scripts. One was used to create the database and the other populated some of the tables with test data. We made it so that our script deleted the previous entries and overwrites the previous version with our most recent version. We also made it so that the auto incrementor gets reset to 0 every time we overwrite. This assures that our primary key relations match up correctly between our made-up data set. If not reset, the auto numbers would keep incrementing up even though we aren’t adding any additional rows. We enforced referential integrity by making sure foreign keys match with primary keys, while also ensuring that specified columns had the NOT NULL clause. We ensured our keys integrity by using the FOREIGN KEY REFERENCES statement.
