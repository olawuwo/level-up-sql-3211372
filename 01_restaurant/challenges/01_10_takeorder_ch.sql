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
  Customers.FirstName,
  Customers.LastName,
  Customers.Address,
  Dishes.Name,
  Dishes.Price
FROM 
  Orders 
JOIN OrdersDishes 
ON Orders.OrderID = OrdersDishes.OrderID
JOIN Dishes 
ON Dishes.DishID = OrdersDishes.DishID
WHERE OrderID = 1 AND Orders.CustomerID = 77;