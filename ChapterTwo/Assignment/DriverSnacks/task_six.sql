use LagosRide;

CREATE TABLE  OutlierRides AS
SELECT r.RideID, r.Fare, avg_f.AvgFare
FROM Rides r
JOIN (
    SELECT AVG(Fare) AS AvgFare FROM Rides
) AS avg_f
WHERE r.Fare > 1.5 * avg_f.AvgFare
   OR r.Fare < 0.5 * avg_f.AvgFare;