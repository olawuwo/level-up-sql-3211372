-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT
  L.DueDate,
  B.Title,
  P.FirstName,
  P.Email
FROM
  Loans AS L
  JOIN Books B 
  ON B.BookID = L.BookID
  JOIN Patrons P 
  ON L.PatronID = P.PatronID
WHERE 
  L.DueDate = '2022-07-13'
  AND l.ReturnedDate IS NULL;