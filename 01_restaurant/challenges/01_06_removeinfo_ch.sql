-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT ReservationID, Date, Customers.FirstName, Customers.LastName From Reservations
LEFT JOIN Customers on Reservations.CustomerID = Customers.CustomerID
Where Customers.FirstName like '%norby%' 
  AND Reservations.Date >= '2022-07-24';

DELETE FROM Reservations
WHERE ReservationID = 2000; 