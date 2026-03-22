create database LagosRide;
show databases;

use LagosRide;
CREATE TABLE Drivers(
	DriverID INT PRIMARY KEY,
	Name VARCHAR(100),
    Rating DOUBLE,
    TotalRides INT 
	
);

INSERT INTO Drivers (DriverID, Name, Rating, TotalRides) VALUES
(1, 'John Doe', 4.5, 120),
(2, 'Jane Smith', 4.2, 90),
(3, 'James Bond', 4.7, 150),
(4, 'Samantha James', 4.3, 80),
(5, 'Michael Brown', 4.0, 60),
(6, 'Nina Williams', 4.6, 200),
(7, 'Chris Johnson', 4.1, 110),
(8, 'Sarah Davis', 4.8, 100),
(9, 'David Lee', 3.9, 70),
(10, 'Emma Green', 4.4, 130),
(11, 'Olumide Adebayo', 4.7, 150),
(12, 'Grace Okafor', 4.3, 140),
(13, 'Julius Adedeji', 4.6, 175),
(14, 'Tolu Olowolagba', 4.2, 105),
(15, 'Fola Akinwunmi', 4.5, 125),
(16, 'Oluwaseun Bello', 4.1, 115),
(17, 'Kayode Ogunleye', 4.8, 180),
(18, 'Chinonso Ifeanyi', 3.8, 85),
(19, 'Oluwafunmilayo Bello', 4.3, 140),
(20, 'Adeola Akin', 4.6, 160);


CREATE TABLE Riders(
	RiderID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(100)
);

INSERT INTO Riders (RiderID, Name, City) VALUES
(1, 'Alice Johnson', 'Lekki'),
(2, 'Victor Martins', 'Ikeja'),
(3, 'Funke Bello', 'Victoria Island'),
(4, 'Tunde Adeyemi', 'Surulere'),
(5, 'Grace Olamide', 'Yaba'),
(6, 'Kingsley Obi', 'Lekki'),
(7, 'Folasade Okoro', 'Ikeja'),
(8, 'Emeka Okafor', 'Victoria Island'),
(9, 'Temilade Adedeji', 'Lekki'),
(10, 'Rita Durojaiye', 'Surulere'),
(11, 'Chuka Nwosu', 'Yaba'),
(12, 'Ayotunde Adeleke', 'Ikeja'),
(13, 'Lola Abiola', 'Lekki'),
(14, 'Olumide Bakare', 'Surulere'),
(15, 'Chidera Okonkwo', 'Victoria Island'),
(16, 'Wale Oni', 'Yaba'),
(17, 'Olivia Adebayo', 'Lekki'),
(18, 'Temidayo Alabi', 'Ikeja'),
(19, 'Micheal Ojo', 'Victoria Island'),
(20, 'Tolu Ayinde', 'Surulere'),
(21, 'Grace Williams', 'Lekki'),
(22, 'Olumide Ayodele', 'Ikeja'),
(23, 'James Osundare', 'Yaba'),
(24, 'Chika Okafor', 'Surulere'),
(25, 'Sandra Ogunleye', 'Victoria Island');


CREATE TABLE Rides(
	RideID INT PRIMARY KEY,
    DriverID INT,
    RiderID INT,
    Fare DOUBLE,
    Rating DOUBLE,
    DistanceKM INT,
    
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
	FOREIGN KEY (RiderID) REFERENCES Riders(RiderID)

    
);

INSERT INTO Rides (RideID, DriverID, RiderID, Fare, Rating, DistanceKM) VALUES
(1, 1, 1, 3000, 4.5, 10),
(2, 2, 2, 2500, 4.2, 8),
(3, 3, 3, 4500, 4.7, 15),
(4, 4, 4, 3500, 4.3, 12),
(5, 5, 5, 2000, 4.0, 7),
(6, 6, 6, 4000, 4.6, 20),
(7, 7, 7, 2800, 4.1, 9),
(8, 8, 8, 5000, 4.8, 18),
(9, 9, 9, 2200, 3.9, 6),
(10, 10, 10, 3700, 4.4, 14),
(11, 11, 11, 3900, 4.7, 16),
(12, 12, 12, 3600, 4.3, 11),
(13, 13, 13, 4200, 4.6, 17),
(14, 14, 14, 3300, 4.2, 13),
(15, 15, 15, 3800, 4.5, 19),
(16, 16, 16, 2500, 4.1, 8),
(17, 17, 17, 4800, 4.8, 22),
(18, 18, 18, 3100, 3.8, 10),
(19, 19, 19, 3300, 4.3, 14),
(20, 20, 20, 4600, 4.6, 20),
(21, 1, 21, 2900, 4.4, 11),
(22, 2, 22, 3200, 4.1, 12),
(23, 3, 23, 3400, 4.7, 13),
(24, 4, 24, 3100, 4.3, 9),
(25, 5, 25, 3600, 4.2, 15),
(26, 6, 1, 2800, 4.6, 12),
(27, 7, 2, 3500, 4.1, 16),
(28, 8, 3, 5000, 4.8, 18),
(29, 9, 4, 2300, 3.9, 7),
(30, 10, 5, 3800, 4.4, 14),
(31, 11, 6, 4000, 4.7, 20),
(32, 12, 7, 3300, 4.3, 13),
(33, 13, 8, 4100, 4.6, 17),
(34, 14, 9, 3100, 4.2, 11),
(35, 15, 10, 4200, 4.5, 19),
(36, 16, 11, 2900, 4.1, 12),
(37, 17, 12, 4700, 4.8, 21),
(38, 18, 13, 3300, 3.8, 10),
(39, 19, 14, 3200, 4.3, 14),
(40, 20, 15, 4500, 4.6, 20),
(41, 1, 16, 3000, 4.5, 12),
(42, 2, 17, 2500, 4.2, 9),
(43, 3, 18, 4500, 4.7, 15),
(44, 4, 19, 3500, 4.3, 13),
(45, 5, 20, 2000, 4.0, 7),
(46, 6, 21, 4000, 4.6, 20),
(47, 7, 22, 2800, 4.1, 8),
(48, 8, 23, 5000, 4.8, 18),
(49, 9, 24, 2200, 3.9, 6),
(50, 10, 25, 3700, 4.4, 14);

CREATE TABLE Payments(
	PaymentID INT PRIMARY KEY,
    RideID INT,
    Amount DOUBLE,
    PaymentMethod VARCHAR(50),
    
    FOREIGN KEY (RideID) REFERENCES Rides(RideID)
    
);
