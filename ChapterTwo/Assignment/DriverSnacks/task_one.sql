USE LagosRide;

CREATE TABLE Top5HighestRatedDrivers AS
SELECT driver.DriverID, driver.Name, AVG(ride.Rating) AS AvgRating
FROM Drivers driver
JOIN Rides ride ON driver.DriverID = ride.DriverID
JOIN Riders rider ON ride.RiderID = rider.RiderID
WHERE rider.City = 'Lagos'
GROUP BY driver.DriverID, driver.Name
ORDER BY AvgRating DESC
LIMIT 5;