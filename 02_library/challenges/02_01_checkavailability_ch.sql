-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT
  B.Title,
  B.BookID,
  L.LoanDate,
  L.DueDate,
  L.ReturnedDate,
  Count(B.BookID) AS NumberOfBooks
FROM
  Loans L
JOIN 
  Books B
ON B.BookID = L.BookID
WHERE 
  Title = 'Dracula'
GROUP BY
  B.Title,
  B.BookID,
  L.LoanDate,
  L.DueDate
ORDER BY
  L.LoanDate DESC;

SELECT
    (
        SELECT
            Count(Title) AS NumberOfBooks
        FROM
            Books
        WHERE
            Title = 'Dracula'
    ) - (
        SELECT
            Count(B.BookID) AS NumberOfBooks
        FROM
            Loans L
            JOIN Books B ON B.BookID = L.BookID
        WHERE
            Title = 'Dracula'
            AND L.ReturnedDate IS NULL
    ) AS AvailableCopies;
