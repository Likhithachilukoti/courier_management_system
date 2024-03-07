create database Courier_Management_System 
use Courier_Management_System
------------------------------------------Task 1------------------------------------------------------
---User_1 table---------

create table User_1
(UserID INT PRIMARY KEY,
Name VARCHAR(255),
Email VARCHAR(255) UNIQUE, Password VARCHAR(255),
ContactNumber VARCHAR(20),
Address TEXT
); 

insert into User_1(UserID,Name,Email,Password,ContactNumber,Address) 
values 
	(1,'likhitha','chilukotilikhitha@gmail.com',3214,1234567809,'31 tgp,vsk,India'),
	(2,'hari','hari123@gmail.com',8643,1631963809,'72 ttl,vsk,India'),
	(3,'ratnam','ratnam72@gmail.com',8752,8432896431,'84 mrp,hyd,India'),
	(4,'dinesh','dishesh25@gmail.com',2519,8328561905,'25 tgp,vsk,India'),
	(5,'vidya','vidya32@gmail.com',1306,6835185286,'54 bdp,vzm,India'),
	(6,'harshu','harshu732@gmail.com',0712,8623951358,'42 ppl,kkd,India'),
	(7,'aishu','aishu143@gmail.com',8423,846218349,'98 ckl,gnt,India'),
	(8,'meena','meena32@gmail.com',3289,9463297514,'73 bdp,vzm,India'),
	(9,'bhavana','bhavan43@gmail.com',7432,7329051268,'28 drs,hyd,India'),
	(10,'likhitha','likhitha6549@gmail.com',3289,9543196469,'23 dsk,chn,India');

select * from User_1


---courier table-----

create table Courier
(CourierID INT PRIMARY KEY,
SenderName VARCHAR(255),
SenderAddress TEXT,
ReceiverName VARCHAR(255),
ReceiverAddress TEXT,
Weight DECIMAL(5, 2),
Status VARCHAR(50),
TrackingNumber VARCHAR(20) UNIQUE,
DeliveryDate DATE);

insert into Courier(CourierID,SenderName,SenderAddress,ReceiverName,ReceiverAddress,Weight,Status,TrackingNumber,DeliveryDate) 
values
	(1,'likhitha','31 tgp,vsk,India','sai','50 hrd,vzm,India',9.3,'pending','AP42984','2024-03-12'),
	(2,'hari','72 ttl,vsk,India','babu','45 yrd,hyd,India',34.5,'out for delivery','AP45326','2024-05-08'),
	(3,'ratnam','84 mrp,hyd,India','venkat','30 hrd,jkh,us',25,'in transit','AP65328','2024-02-29'),
	(4,'dinesh','25 tgp,vsk,India','kumar','56 had,vzm,India',10,'delivered','AP73468','2024-07-25'),
	(5,'vidya','54 bdp,vzm,India','sri','89 hrd,hyd,India',43.5,'pending','AP92367','2024-10-21'),
	(6,'harshu','42 ppl,kkd,India','sai','43 hrd,hsf,uk',30.5,'delivered','AP64327','2024-02-12'),
	(7,'aishu','98 ckl,gnt,India','vishnu','25 tgp,vsk,India',40,'in transit','AP64279','2024-03-28'),
	(8,'meena','73 bdp,vzm,India','rama','42 hrf,gdf,us',26.5,'out for delivery','AP54284','2024-04-15'),
	(9,'bhavana','28 drs,hyd,India','neeraj','85 ghs,hyd,India',60,'pending','AP52178','2024-07-07'),
	(10,'likhitha','23 dsk,chn,India','divya','43 rfs,jws,uk',10,'out for delivery','AP45312','2024-06-12');

select * from Courier

update Courier set status='out_for_delivery' where status='out for delivery'

create table CourierServices
(ServiceID INT PRIMARY KEY,
ServiceName VARCHAR(100),
Cost DECIMAL(8, 2)); 

insert into CourierServices(ServiceID,ServiceName,Cost) 
values 
	(1,'safexpress',100),
	(2,'ekart',150),
	(3,'fedEx',200),
	(4,'xpressbees',250),
	(5,'delhivery',100),
	(6,'blue_Dart',150),
	(7,'propack',200),
	(8,'mailmate',250),
	(9,'quickship',100),
	(10,'flashfleet',150);

select * from CourierServices


---employee table---

create table Employee
(EmployeeID INT PRIMARY KEY,
Name VARCHAR(255),
Email VARCHAR(255) UNIQUE,
ContactNumber VARCHAR(20),
Role VARCHAR(50),
Salary DECIMAL(10, 2));

insert into Employeevalues	(1,'anirudh','anirudh12@gmail.com',4689241358,'manager',100000),
	(2,'chitra','chitra43@gmail.com',3890257815,'manager',100000),
	(3,'devi','devi52@gmail.com',8462156327,'assistant manager',50000),
	(4,'amrutha','amrutha312@gmail.com',7392351246,'assistant manager',50000),
	(5,'keerthi','keerthi34@gmail.com',985356892,'assistant manager',50000),
	(6,'sai kumar','saikumar@gmail.com',7856214905,'admisitrator',45000),
	(7,'kishore','kishore78@gmail.com',7879554320,'delivery boy',25000),
	(8,'sesh','sesh43@gmail.com',7851361545,'delivery boy',25000),
	(9,'mohan','mohan21@gmail.com',8132645824,'delivery boy',25000),
	(10,'john','john63@gmail.com',8456972349,'delivery boy',25000);

select * from Employee;

--Location table--

create table Location
(LocationID INT PRIMARY KEY,
LocationName VARCHAR(100),
Address TEXT); insert into Locationvalues	(1,'main road','50 hrd,vzm,India'),	(2,'branch office','45 yrd,hyd,India'),	(3,'Central Hub','30 hrd,jkh,us'),	(4,'Urban Dispatch Depot','56 had,vzm,India'),	(5,'Valley Cargo Terminal','89 hrd,hyd,India'),	(6,'Summit Express Facility','43 hrd,hsf,uk'),	(7,'Skyline Delivery Hub','25 tgp,vsk,India'),	(8,'Metro Logistics Center','42 hrf,gdf,us'),	(9,'Lakeside Logistics Park','85 ghs,hyd,India'),	(10,'Harbor Freight Terminal','43 rfs,jws,uk');select * from Location--Payment table--create table Payment
(PaymentID INT PRIMARY KEY,
CourierID INT,
LocationId INT,
Amount DECIMAL(10, 2),
PaymentDate DATE,
FOREIGN KEY (CourierID) REFERENCES Courier(CourierID),
FOREIGN KEY (LocationID) REFERENCES Location(LocationID));insert into Paymentvalues	(1,1,2,90.45,'2024-02-28'),	(2,2,3,25,'2024-03-30'),	(3,2,3,40.50,'2024-02-29'),	(4,3,2,30,'2024-04-02'),	(5,5,6,50.50,'2024-03-20'),	(6,5,9,90,'2024-02-28'),	(7,5,5,55,'2024-05-10'),	(8,6,3,75.45,'2024-03-25'),	(9,7,1,60,'2024-04-18'),	(10,8,8,80,'2024-07-25');update Payment set PaymentDate='2024-06-20' where PaymentID=1update Payment set PaymentDate='2024-07-20' where PaymentID=2update Payment set PaymentDate='2025-11-28' where PaymentID=5select * from Payment;/* TASK 2 */-----1.List all customers:------select Name from User_1;-----2.List all orders for a specific customer:------select * from CourierwhereSenderName='Likhitha'-----3.List all couriers:--------select * from Courier-----4.List all packages for a specific order:-----select * from Courierwhere TrackingNumber='AP45326'-----5.List all deliveries for a specific courier:----select * from CourierwhereCourierID=7-----6.List all undelivered packages:----select * from Courierwherenot Status = 'delivered'-----7.List all packages that are scheduled for delivery today:----select * from courier where DeliveryDate=getdate();-----8.List all packages with a specific status:-------select * from courierwhereStatus='pending'-----9.Calculate the total number of packages for each courier---------select courierid, count(*) as total_packages from courier group by courierid;----10. Find the average delivery time for each courier---------SELECT 
    c.CourierID,
    AVG(DATEDIFF(day,c.DeliveryDate,p.PaymentDate)) AS AvgDeliveryTime
FROM 
    Courier c
LEFT JOIN 
    Payment p ON c.CourierID = p.CourierID
GROUP BY 
    c.CourierID;
-----11. List all packages with a specific weight range:---------------select * from Courierwhere Weight between 20 and 40-----12.Retrieve employees whose names contain 'John'-------------select * from Employeewhere Name='john'-----13.Retrieve all courier records with payments greater than $50-------select * from PaymentwhereAmount >50/*********TASK 3******************/update Employee set Name='john' where name='devi'select * from Employee-----14.Find the total number of couriers handled by each employee-------SELECT Name , COUNT(*) AS TotalCouriersHandled
FROM Employee
GROUP BY Name;
----------------------------------------------------------------update Location set LocationName='main road' where LocationName='Metro Logistics Center'update Location set LocationName='main road' where LocationName='Valley Cargo Terminal'select * from Location-----15. Calculate the total revenue generated by each location--------select l.LocationName,sum(p.Amount) as [total revenue]from location ljoin Payment pon l.locationId=p.locationIdgroup By l.locationName
-----16. Find the total number of couriers delivered to each location---------
SELECT LocationName,COUNT(*) AS TotalCouriersDelivered
FROM Location
GROUP BY LocationName;

-----17. Find the courier with the highest average delivery time:------
SELECT TOP 1
    c.CourierID,
    AVG((DATEDIFF(day, c.DeliveryDate,p.PaymentDate))) AS AvgDeliveryTime
FROM 
    Courier c
LEFT JOIN 
    Payment p ON c.CourierID = p.CourierID
GROUP BY 
    c.CourierID
ORDER BY 
    AVG((DATEDIFF(day, c.DeliveryDate,p.PaymentDate))) DESC;



-----18.Find Locations with Total Payments Less Than a Certain Amount----------
select l.LocationName, sum(p.Amount) as total_payments
from Location l
join 
Payment p
on l.LocationID=p.LocationId
group by l.LocationName
having sum(p.Amount) < 100

-------19.Calculate Total Payments per Location-----------
select locationId,sum(amount) as 'TotalPayments' 
from payment  
group by(locationId);

-------20.Retrieve couriers who have received payments totaling more than $1000 in a specific location (LocationID = X):----
select c.CourierID, sum(p.Amount) as total_payment
from courier c
join 
Payment p
on c.CourierID=p.CourierID
where p.LocationId=3
group by c.CourierID
having sum(p.Amount) > 50

--------21.Retrieve couriers who have received payments totaling more than $1000 after a certain date (PaymentDate > 'YYYY-MM-DD'):--------
SELECT c.CourierID
FROM courier c
JOIN payment p ON c.courierId = p.courierId
WHERE p.PaymentDate > '2024-02-14'
GROUP BY c.courierId
HAVING SUM(p.amount) > 100;

--------22.Retrieve locations where the total amount received is more than $5000 before a certain date (PaymentDate > 'YYYY-MM-DD')--------
select LocationId, sum(Amount) as [total amount]
from Payment
where PaymentDate > '2024-03-28'
group by LocationId
having sum(Amount) > 50


/************* TASK 4 ***********************/

--------23. Retrieve Payments with Courier Information------------
select p.*,c.*
from payment p
join 
courier c
on p.courierID=c.CourierID

-------24. Retrieve Payments with Location Information------------
select p.*,l.*
from payment p
join 
Location l
on p.LocationId=l.LocationID

--------25. Retrieve Payments with Courier and Location Information------
SELECT p.PaymentID, p.CourierID, c.SenderName, c.SenderAddress, c.ReceiverName, c.ReceiverAddress, 
       c.Weight, c.Status, c.TrackingNumber, c.DeliveryDate, 
       l.LocationName, l.Address,
       p.Amount, p.PaymentDate
FROM Payment p
JOIN Courier c 
ON p.CourierID = c.CourierID
JOIN 
Location l ON p.LocationID = l.LocationID;

--------26. List all payments with courier details---------
SELECT p.PaymentID, p.CourierID, c.SenderName, c.SenderAddress, c.ReceiverName, c.ReceiverAddress, 
       c.Weight, c.Status, c.TrackingNumber, c.DeliveryDate, 
       p.Amount, p.PaymentDate
FROM Payment p
JOIN Courier c ON p.CourierID = c.CourierID;

---------27. Total payments received for each courier-----------
SELECT c.CourierID, c.SenderName, c.ReceiverName, 
       SUM(p.Amount) AS TotalPaymentsReceived
FROM Payment p
JOIN Courier c ON p.CourierID = c.CourierID
GROUP BY c.CourierID, c.SenderName, c.ReceiverName

---------28. List payments made on a specific date-----------
SELECT p.PaymentID, p.CourierID, c.SenderName, c.ReceiverName,
       p.Amount, p.PaymentDate
FROM Payment p
JOIN Courier c ON p.CourierID = c.CourierID
WHERE p.PaymentDate = '2024-02-28';

----------29. Get Courier Information for Each Payment------------
SELECT p.PaymentID, p.CourierID, c.SenderName, c.SenderAddress, c.ReceiverName, c.ReceiverAddress,
       c.Weight, c.Status, c.TrackingNumber, c.DeliveryDate,
       p.Amount, p.PaymentDate
FROM Payment p
JOIN Courier c ON p.CourierID = c.CourierID;


---------30.Get Payment Details with Location----------
select l.locationName,p.*
from payment p
join 
location l
on p.LocationId=l.LocationID

--------31.Calculating Total Payments for Each Courier---------
select c.CourierID,c.SenderName,sum(p.Amount) as Total_payments
from payment p
join
Courier c
on p.CourierID=c.CourierID
group by c.CourierID,c.SenderName


---------32.List Payments Within a Date Range-------------
SELECT p.*, C.SenderName,L.LocationName
FROM Payment p
JOIN 
Courier c
on P.CourierID = C.CourierID
JOIN
Location l 
on p.LocationID = L.LocationID
WHERE P.PaymentDate BETWEEN '2024-02-20' AND '2024-04-20'

---------33. Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side--------
SELECT u.UserID, u.Name,c.*
FROM User_1 u
full outer join
Courier c 
ON u.Name = c.SenderName

----------34. Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side----------
select c.courierid,c.sendername,cs.*
from Courier c
full outer join
CourierServices cs
on c.CourierID=cs.ServiceID

----------35. Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side-------
select e.employeeid,e.Name,p.*
from Employee e
full outer join 
Payment p
on e.EmployeeID=p.PaymentID

---------------36. List all users and all courier services, showing all possible combinations.--------------
select u.UserID,u.Name,cs.ServiceID,cs.ServiceName
from User_1 u
cross join 
CourierServices cs

--------------37. List all employees and all locations, showing all possible combinations:---------------
select e.EmployeeID,e.Name,l.LocationID,l.LocationName
from Employee e
cross join 
Location l

--------------38. Retrieve a list of couriers and their corresponding sender information (if available)-----------
SELECT 
    c.CourierID,
    c.SenderName,
    u.Email AS SenderEmail,
    u.ContactNumber AS SenderContactNumber,
    u.Address AS SenderAddress,
    c.ReceiverName,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate
FROM 
    Courier c
left JOIN 
    User_1 u ON c.SenderName = u.Name;

-----------39. Retrieve a list of couriers and their corresponding receiver information (if available):--------------
SELECT 
    c.CourierID,
    c.SenderName,
    c.SenderAddress,
    c.ReceiverAddress,
    c.Weight,
    c.Status,
    c.TrackingNumber,
    c.DeliveryDate
FROM 
    Courier c
LEFT JOIN 
    User_1 u ON c.ReceiverName = u.Name;

--40. Retrieve a list of couriers along with the courier service details (if available):
select c.CourierID, c.SenderName, c.SenderAddress, c.ReceiverName, c.ReceiverAddress, cs.ServiceName, cs.Cost
from Courier c
JOIN CourierServices cs ON c.CourierID = cs.ServiceID;

--41. Retrieve a list of employees and the number of couriers assigned to each employee:
select e.EmployeeID, e.Name, COUNT(c.CourierID) AS NumCouriers
from Employee e
LEFT JOIN Courier c ON e.EmployeeID = c.CourierID
GROUP BY e.EmployeeID, e.Name;

--42. Retrieve a list of locations and the total payment amount received at each location:
select l.LocationID,l.LocationName,sum(p.Amount) as totalpayment
From Location l
Left join Payment p ON l.LocationID =p.LocationId
GROUP BY l.LocationID , l.LocationName;

--43. Retrieve all couriers sent by the same sender (based on SenderName). 
select * from Courier where SenderName='likhitha'

----44. List all employees who share the same role.  
SELECT e1.EmployeeID, e1.Name, e1.Role
FROM Employee e1
JOIN Employee e2 ON e1.Role = e2.Role
WHERE e1.EmployeeID <> e2.EmployeeID


---45. Retrieve all payments made for couriers sent from the same location
SELECT p.PaymentID, p.CourierID, p.LocationID, p.Amount, p.PaymentDate
FROM Payments p
JOIN Courier c1 ON p.CourierID = c1.CourierID
JOIN Courier c2 ON c1.SenderAddress = c2.SenderAddress
WHERE c1.SenderAddress <> c2.SenderAddress


---46. Retrieve all couriers sent from the same location
SELECT c1.CourierID,c1.SenderName,c1.SenderAddress,c1.Packages
FROM Courier c1
JOIN Courier c2 ON c1.SenderAddress = c2.SenderAddress
WHERE c1.CourierID <> c2.CourierID


--47. List employees and the number of couriers they have delivered: 
select e.EmployeeID, e.Name, COUNT(c.CourierID) AS NumDeliveredCouriers
from Employee e
JOIN Courier c ON e.EmployeeID = c.CourierID
where c.Status = 'Delivered'
group by e.EmployeeID,e.Name

--48. Find couriers that were paid an amount greater than the cost of their respective courier services
update Payment set Amount=350 where PaymentID=2
update Payment set Amount=300 where PaymentID=9


select c.CourierID, c.TrackingNumber
from Courier c
JOIN Payment p ON c.CourierID = p.CourierID
JOIN CourierServices cs ON c.CourierID = cs.ServiceID
WHERE p.Amount > cs.Cost

--49. Find couriers that have a weight greater than the average weight of all couriers
SELECT *
FROM Courier
WHERE Weight > (SELECT AVG(Weight) FROM Courier);

--50. Find the names of all employees who have a salary greater than the average salary:
SELECT Name
FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

--51. Find the total cost of all courier services where the cost is less than the maximum cost
SELECT SUM(Cost)
FROM CourierServices
WHERE Cost < (SELECT MAX(Cost) FROM CourierServices);

--52. Find all couriers that have been paid for
SELECT *
FROM Courier
WHERE CourierId IN (SELECT DISTINCT CourierId FROM Payment);

--53. Find the locations where the maximum payment amount was made
SELECT LocationId
FROM Payment
WHERE Amount = (SELECT MAX(Amount) FROM Payment);

--54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender 
--(e.g., 'SenderName'):
SELECT *
FROM Courier
WHERE Weight > ALL (SELECT Weight FROM Courier WHERE Courier.SenderName = 'likhitha')