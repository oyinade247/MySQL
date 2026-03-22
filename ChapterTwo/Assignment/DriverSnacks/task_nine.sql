use LagosRide;

CREATE TABLE IF NOT EXISTS InactiveDrivers AS
SELECT d.DriverID, d.Name
FROM Drivers d
LEFT JOIN Rides r ON d.DriverID = r.DriverID
WHERE r.RideID IS NULL;