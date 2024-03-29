
# Queries!!!!!

### 1.List all orders from the company "Screw your Cork".

select PeopleAndCustomers.FullName, 
		PeopleAndCustomers.PersonType, 
		PeopleAndCustomers.Phone,
		Vendor.PrimaryContactName,
		Vendor.PrimaryContactPhone,
		Vendor.VendorDescription,
		WineBottleOrder.OrderedOn

 from PeopleAndCustomers inner join Vendor on PeopleAndCustomers.PCID = Vendor.PCID inner join WineBottleOrder on Vendor.VID = WineBottleOrder.VID
 where Vendor.PrimaryContactName like '%Screw your cork%';

### 2. List orders that have not yet been received.

select PeopleAndCustomers.FullName, 
		PeopleAndCustomers.PersonType, 
		PeopleAndCustomers.Phone,
		Vendor.PrimaryContactName,
		Vendor.PrimaryContactPhone,
		Vendor.VendorDescription,
		WineBottleOrder.OrderedOn,
		WineBottleOrder.ReceivedOn

 from PeopleAndCustomers inner join Vendor on PeopleAndCustomers.PCID = Vendor.PCID inner join WineBottleOrder on Vendor.VID = WineBottleOrder.VID
 where WineBottleOrder.ReceivedOn is Null;

### 3. List names and phone numbers of all venders.

select PeopleAndCustomers.FullName, 
		PeopleAndCustomers.PersonType,
		PeopleAndCustomers.Phone
from PeopleAndCustomers
where PeopleAndCustomers.PersonType = 'V';

### 4. What bottle types does Big ol Bottles Co. supply.

select WineBottleType.Shape,
		WineBottleType.Color,
		WineBottleType.Size,
		WineBottleType.Inventory,
		WineBottleType.MSRP,
		WineBottleType.WBTID
from Vendor inner join WineBottleOrder on Vendor.VID = WineBottleOrder.VID
		inner join WineBottleOrderLine on WineBottleOrderLine.WBOID = WineBottleOrder.WBOID
		inner join WineBottleType on WineBottleOrderLine.WBTID = WineBottleType.WBTID
where Vendor.PrimaryContactName like '%Big ol Bottles%';

### 5. Get me the vendors contact info for bottles where inventory is below 200.

SELECT 
	Inventory AS CurrentStock, Vendor.PrimaryContactName, Vendor.PrimaryContactPhone, VendorDescription, MSRP 
FROM 
	Vendor, WineBottleOrder, WineBottleOrderLine, WineBottleType
WHERE 
	Vendor.VID = WineBottleOrder.VID 
	AND WineBottleOrder.WBOID = WineBottleOrderLine.WBOID
	AND WineBottleOrderLine.WBTID = WineBottleType.WBTID
	AND Inventory < 200;

### 6. List the vendors that have been used more than once.

Select 
	VID, PrimaryContactName, PrimaryContactPhone 
From 
	Vendor 
Where 
	VID IN (SELECT VID FROM WineBottleOrder Group BY (VID) Having Count(VID) > 1);
	
	
### 7. Find the average price of our bottle orders.

select avg(WineBottleOrderLine.SalePrice) from WineBottleOrderLine;

### 8. Give me information about the amount of total sales for each bottle on each order.

SELECT  
	WBOID, Size, Shape, Color, Inventory, MSRP, Quantity, (Quantity * MSRP) AS BottleSaleOnOrder
FROM 
	WineBottleOrderLine, WineBottleType 
Where 
	WineBottleOrderLine.WBTID = WineBottleType.WBTID;
	
### 9. Get an email list of our venders.
select PeopleAndCustomers.Email from PeopleAndCustomers;

### 10. List all orders in 2017.

SELECT  
	*
FROM 
	WineBottleOrder
Where 
	OrderedOn BETWEEN '01-01-2017' AND '12-31-2017';
