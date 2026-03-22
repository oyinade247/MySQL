use LagosRide;

CREATE TABLE IF NOT EXISTS Top5AreasByFare AS
SELECT rider.City AS Area, AVG(p.Amount) AS AverageFare
FROM Payments p
JOIN Rides r ON p.RideID = r.RideID
JOIN Riders rider ON r.RiderID = rider.RiderID
GROUP BY rider.City
ORDER BY AverageFare DESC
LIMIT 5;