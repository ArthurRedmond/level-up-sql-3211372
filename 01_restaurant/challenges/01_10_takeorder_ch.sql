-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * FROM Customers
WHERE FirstName = 'Loretta';

INSERT INTO Orders (
  CustomerID, OrderDate)
  VALUES ( 70, '2022-09-20 14:00:00');

SELECT * FROM Orders
WHERE CustomerID = 70
ORDER BY OrderDate Desc
LIMIT 1;

SELECT DishID, Name, Price 
FROM Dishes
WHERE Name LIKE 'House Salad' OR 
      Name LIKE '%Cheeseburger%' OR
      Name LIKE '%Blue%';

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, (SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
       (1001, (SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburger')),
       (1001, (SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));

SELECT * FROM OrdersDishes
WHERE OrderID = 1001;

Select SUM(Dishes.Price) AS TotalPrice
From OrdersDishes
JOIN Dishes ON OrdersDishes.DishID = Dishes.DishID
WHERE OrdersDishes.OrderID = 1001