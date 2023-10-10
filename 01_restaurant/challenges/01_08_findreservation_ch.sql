-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT Res.ReservationID, Res.CustomerID, Cust.LastName, Res.PartySize, REs.Date
FROM Reservations as Res
JOIN Customers as Cust 
  on Res.CustomerID = Cust.CustomerID
WHERE Cust.LastName in ('Stevensen', 'Stephensen', 'Stevenson', 'Stephenson', 'Stuyvesant')
  AND Res.PartySize = 4
  AND Res.Date > '2022-06-14';