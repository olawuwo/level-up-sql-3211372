-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
SELECT 
  *
FROM 
  Reservations
WHERE CustomerID = (
  SELECT CustomerID
  FROM Customers
  WHERE FirstName LIKE '%Norby%' 
  AND Date > '2022-07-24');

DELETE FROM Reservations
WHERE ReservationID = '2000';

UPDATE Reservations
SET Date = NULL WHERE ReservationID = '2000';