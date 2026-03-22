use LagosRide;

CREATE TABLE IF NOT EXISTS LongestRides AS
SELECT r.RideID, r.DistanceKM, r.DriverID, r.RiderID
FROM Rides r
JOIN Riders rider ON r.RiderID = rider.RiderID
ORDER BY r.DistanceKM DESC
LIMIT 5;