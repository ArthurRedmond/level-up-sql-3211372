-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT CustomerID, FirstName, LastName, FavoriteDish, Dishes.Name From Customers
JOIN Dishes on Customers.FavoriteDish = Dishes.DishID
WHERE FirstName = 'Cleo' 
  AND LastName = 'Goldwater';

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = 42;

SELECT CustomerID, FirstName, LastName, FavoriteDish, Dishes.Name From Customers
JOIN Dishes on Customers.FavoriteDish = Dishes.DishID
WHERE CustomerID = 42;