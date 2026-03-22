use LagosRide;

CREATE TABLE IF NOT EXISTS LowRatingRiders AS
SELECT r.RiderID, rider.Name, AVG(r.Rating) AS AverageRating
FROM Rides r
JOIN Riders rider ON r.RiderID = rider.RiderID
WHERE rider.City = 'Lagos'
GROUP BY r.RiderID, rider.Name
HAVING AverageRating < 3;