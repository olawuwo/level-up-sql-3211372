-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT
  count(Loans.LoanID),
  count(Loans.BookID),
  Patrons.Email,
  Patrons.FirstName
FROM
  Loans
  JOIN Patrons
  ON Loans.PatronID = Patrons.PatronID
GROUP BY
  Loans.PatronID
ORDER BY
  count(Loans.LoanID)
LIMIT 15;