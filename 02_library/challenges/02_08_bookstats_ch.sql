-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT
  Books.Published,
  Count(DISTINCT(Title)) AS NumBooksPerYear
FROM
  Books
GROUP BY 
  Books.Published
ORDER BY
  NumBooksPerYear DESC;

SELECT
  Count((Loans.LoanID)) AS MostBookTitle,
  Books.Title AS CtMostBookTitle
FROM
  Loans
  JOIN Books 
  ON Loans.BookID = Books.BookID
GROUP BY
  CtMostBookTitle
ORDER BY
  MostBookTitle DESC
LIMIT 5;