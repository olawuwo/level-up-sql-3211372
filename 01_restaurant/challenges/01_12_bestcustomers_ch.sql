-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT 
  count(OrderID) AS OrderCount,
  c.FirstName,
  c.LastName,
  c.Email
FROM
  Customers AS 
JOIN Orders AS o
  ON c.CustomerID = o.CustomerID
GROUP BY
  c.FirstName,
  c.LastName,
  c.Email
ORDER BY
  OrderCount DESC
LIMIT 6;
