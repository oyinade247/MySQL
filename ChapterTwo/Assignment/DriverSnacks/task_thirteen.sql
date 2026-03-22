use LagosRide;

CREATE TABLE IF NOT EXISTS LongDurationRides AS
SELECT r.RideID, r.Duration AS Duration, r.DriverID, r.RiderID
FROM Rides r
JOIN Riders rider ON r.RiderID = rider.RiderID
WHERE r.Duration > 120;