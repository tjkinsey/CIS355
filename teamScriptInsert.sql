USE ValleyVinyardsDaveIanTanner

DELETE FROM Vendor;
DELETE FROM PeopleAndCustomers;
DBCC CHECKIDENT ("PeopleAndCustomers", RESEED, 1);
DBCC CHECKIDENT (Vendor, RESEED, 1);


INSERT INTO PeopleAndCustomers
	Values('Dave Wells', 6913143, '1236 Canvasback Ct.', 'dwells@rams.colostate.edu', 'V')
	,('Bob Ross', 1234567, '1234 HeartsAndCandyLane.', 'BobThePainter@rams.colostate.edu', 'V')
	,('Bob The Builder', 9999999, '3456 IBuiltThisMfHouse!', 'BobTheBuilder@rams.colostate.edu', 'V')
	,('Tanner Kinsey', 8889999, '111 Place Ave.', 'tkinsey@rams.colostate.edu', 'V');

INSERT INTO Vendor
	Values(2,5551111, 'Super Awesome Bottles Co.','Best Green Bottles Around')
	,(3,5552222, 'Big ol Bottles Inc.','Biggest Dang Bottles Money Can Buy')
	,(4,5553333, 'Unbreakable Glass Co.', 'You seriously cannot break these bottles!')
	,(5,5554444, 'Screw Your Cork Ind.', 'No corks only screw caps');
	

INSERT INTO WineBottleOrder
VALUES(1,'11-28-2018',NULL),
(2,'9-16-2018','9-18-2018'),
(2,'4-19-2018','4-24-2018'),
(3,'1-10-2018','3-13-2018'),
(4,'12-16-2017','12-20-2017'),
(4,'10-24-2018','10-28-2018');

