USE LagosRide;

CREATE TABLE RidersWithMoreThan5Rides AS
SELECT rider.Name, COUNT(ride.RideID) AS TotalRides
FROM Riders rider
JOIN Rides ride ON rider.RiderID = ride.RiderID
WHERE rider.City = 'Lagos'
  AND ride.RideDate >= CURDATE() - INTERVAL 30 DAY
GROUP BY rider.RiderID, rider.Name
HAVING COUNT(ride.RideID) > 5;