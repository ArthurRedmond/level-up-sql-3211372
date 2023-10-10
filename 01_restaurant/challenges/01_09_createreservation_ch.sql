-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
SELECT * From Customers
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Customers (FirstName, LastName, Email)
Values ('Sam', 'McAdams', 'smac@kinetecoinc.com');

SELECT * From Customers
WHERE Email = 'smac@kinetecoinc.com';

INSERT INTO Reservations (
  CustomerID, Date, PartySize)
  Values (102, '2022-08-12 18:00:00', 5);

SELECT Cust.FirstName, Cust.LastName, Cust.Email, Res.Date, Res.PartySize
FROM Customers as Cust
JOIN Reservations as Res
  ON Cust.CustomerID = Res.CustomerID
Where Cust.Email = 'smac@kinetecoinc.com';