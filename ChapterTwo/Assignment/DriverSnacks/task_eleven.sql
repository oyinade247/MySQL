use LagosRide;

CREATE TABLE IF NOT EXISTS DriverRideCounts AS
SELECT d.DriverID, COUNT(r.RideID) AS TotalRides
FROM Drivers d
LEFT JOIN Rides r ON d.DriverID = r.DriverID
GROUP BY d.DriverID
ORDER BY TotalRides DESC;