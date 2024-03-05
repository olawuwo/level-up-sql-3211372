-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

-- checking for the customer if they exist
SELECT 
  *
FROM 
  Customers
WHERE 
  Email = 'smac@kinetecoinc.com';

-- Unfortunately they do not exist at the time of 
-- this exercise
-- A quick check at the columns in the reservation table
SELECT 
  *
FROM 
  Reservations;

--Inserting the new customer record
INSERT 
  INTO Customers (
  FirstName,
  LastName,
  Email) 
VALUES (
  'Sam',
  'McAdams',
  'smac@kinetecoinc.com'
  );

-- Making a reservation for the customer (ID=102)
INSERT 
INTO Reservations (
  CustomerID,
  Date,
  PartySize) 
VALUES (
  '102',
  '2024-05-03',
  5
  );

-- Quick check to confirm the reservation was made
SELECT 
  *
FROM 
  Reservations
WHERE
  CustomerID = 102