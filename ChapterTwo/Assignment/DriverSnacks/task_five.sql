use LagosRide;


CREATE TABLE IF NOT EXISTS TopDriverRevenue AS
SELECT d.DriverID, d.Name, SUM(p.Amount) AS TotalRevenue
FROM Drivers d
JOIN Rides r ON d.DriverID = r.DriverID
JOIN Payments p ON r.RideID = p.RideID
JOIN Riders rider ON r.RiderID = rider.RiderID
WHERE rider.City = 'Lagos'
GROUP BY d.DriverID, d.Name
ORDER BY TotalRevenue DESC
LIMIT 1;