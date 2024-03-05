-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Using the customer address to find the customer, CustomerID=70
SELECT 
  *
FROM 
  Customers
WHERE
  Address = '6939 Elka Place';

SELECT 
  SUM(Dishes.Price),
  Customers.FirstName,
  Customers.LastName,
  Customers.Address
FROM 
  Customers
JOIN Orders 
ON Orders.CustomerID = Customers.CustomerID
JOIN OrdersDishes 
ON Orders.OrderID = OrdersDishes.OrderID
JOIN Dishes 
ON Dishes.DishID = OrdersDishes.DishID
WHERE Orders.OrderID = 1001
GROUP BY 
  Customers.FirstName,
  Customers.LastName,
  Customers.Address
ORDER BY 
  Orders.OrderDate;

-- Find the DishID for the items
SELECT
  *
FROM
  Dishes
WHERE 
  Name IN (
    'House Salad',
    'Tropical Blue Smoothie',
    'Mini Cheeseburgers');
-- MC = 4, HS = 7, TBS = 20
INSERT INTO 
  Orders (CustomerID, OrderDate)
VALUES 
  (70, '2022-20-09 14:00:00');

SELECT
  *
FROM
  Orders
WHERE 
  CustomerID = 70
ORDER BY 
  OrderDate DESC;

INSERT INTO 
  OrdersDishes (OrderID, DishID)
VALUES 
  (1001, 4), (1001, 7), (1001, 20);
