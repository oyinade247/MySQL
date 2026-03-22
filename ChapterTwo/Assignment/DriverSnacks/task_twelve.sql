use LagosRide;

CREATE TABLE IF NOT EXISTS HighFarePaymentMethods AS
SELECT p.PaymentMethod, COUNT(*) AS NumberOfTransactions
FROM Payments p
JOIN Rides r ON p.RideID = r.RideID
JOIN Riders rider ON r.RiderID = rider.RiderID
WHERE p.Amount > 50000
GROUP BY p.PaymentMethod;