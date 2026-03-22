USE LagosRide;


CREATE TABLE TOTALREVENUEFORPASTMONTH AS
SELECT SUM(pay.Amount) AS TotalRevenue
FROM Payments pay
JOIN Rides ride ON pay.RideID = ride.RideID
JOIN Riders rider ON ride.RiderID = rider.RiderID
WHERE rider.City = 'Lagos'
  AND ride.RideDate >= CURDATE() - INTERVAL 1 MONTH;