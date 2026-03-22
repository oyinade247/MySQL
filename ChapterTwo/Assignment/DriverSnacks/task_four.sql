USE LagosRide;


CREATE TABLE IF NOT EXISTS AreaRideCounts AS
SELECT rider.City AS Area, COUNT(*) AS RideCount
FROM Rides ride
JOIN Riders rider ON ride.RiderID = rider.RiderID
GROUP BY rider.City
ORDER BY RideCount DESC
LIMIT 1;