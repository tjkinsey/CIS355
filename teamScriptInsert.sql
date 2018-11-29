USE ValleyVinyardsDaveIanTanner

DELETE FROM WineBottleType;
DELETE FROM WineBottleOrderLine;
DELETE FROM WineBottleOrder;
DELETE FROM Vendor;
DELETE FROM PeopleAndCustomers;
DBCC CHECKIDENT ("PeopleAndCustomers", RESEED, 0);
DBCC CHECKIDENT (Vendor, RESEED, 0);
DBCC CHECKIDENT (WineBottleOrder, RESEED, 0);
DBCC CHECKIDENT (WineBottleOrderLine, RESEED, 0);
DBCC CHECKIDENT (WineBottleType, RESEED, 0);

INSERT INTO PeopleAndCustomers
	Values('Dave Wells', 6913143, '1236 Canvasback Ct.', 'dwells@rams.colostate.edu', 'V')
	,('Bob Ross', 1234567, '1234 HeartsAndCandyLane.', 'BobThePainter@rams.colostate.edu', 'V')
	,('Bob The Builder', 9999999, '3456 IBuiltThisMfHouse!', 'BobTheBuilder@rams.colostate.edu', 'V')
	,('Tanner Kinsey', 8889999, '111 Place Ave.', 'tkinsey@rams.colostate.edu', 'V');

INSERT INTO Vendor
	Values(1,5551111, 'Super Awesome Bottles Co.','Best Green Bottles Around')
	,(2,5552222, 'Big ol Bottles Inc.','Biggest Dang Bottles Money Can Buy')
	,(3,5553333, 'Unbreakable Glass Co.', 'You seriously cannot break these bottles!')
	,(4,5554444, 'Screw Your Cork Ind.', 'No corks only screw caps');
	

INSERT INTO WineBottleOrder
	VALUES(1,'11-28-2018',NULL),
	(2,'9-16-2018','9-18-2018'),
	(2,'4-19-2018','4-24-2018'),
	(3,'1-10-2018','3-13-2018'),
	(4,'12-16-2017','12-20-2017'),
	(4,'10-24-2018','10-28-2018');

INSERT INTO WineBottleOrderLine
	VALUES(1,2,20,25.50),
	(1,4,5,10.25),
	(2,3,100,105.00),
	(3,3,99,100.75),
	(4,2,45,40.2),
	(5,1,50,75.8),
	(5,2,50,100.5),
	(6,4,30,90.1);

INSERT INTO WineBottleType
	VALUES(5.45, 4, 'Narrow Neck', 'Brown', 400)
	,(8.22, 3, 'Wide Mouth', 'Green', 800)
	,(8.99, 3.5, 'GoldyLox', 'Clear', 122)
	,(11.99, 5, 'Ultra Glug', 'Blue', 0);
