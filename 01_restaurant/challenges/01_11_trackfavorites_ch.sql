-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad (DishID = 9).

-- CustomerID = 42
SELECT
  *
FROM
  Customers
WHERE 
  CustomerID = 42;

UPDATE Customers
SET FavoriteDish = 9
WHERE CustomerID = 42;