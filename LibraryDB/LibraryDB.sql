 
--26. Count total books in Books table. 
SELECT COUNT(*) AS TotalBooks
FROM Books;

--27. Average book price from Books table. 
SELECT AVG(Price) AS AverageBookPrice
FROM Books;

--28. Count books per library grouped by Library_ID. 
SELECT LibraryID, COUNT(*) AS BooksPerLibrary
FROM Books
GROUP BY LibraryID;

--29. Count books borrowed per member from Borrows table grouped by Member_ID. 
SELECT MemberID, COUNT(*) AS BorrowedBooksCount
FROM Loans
GROUP BY MemberID;

--30. List members who borrowed more than 3 books grouped by Member_ID.
SELECT M.MemberID, M.FullName, COUNT(L.LoanID) AS BorrowCount
FROM Members M
JOIN Loans L ON M.MemberID = L.MemberID
GROUP BY M.MemberID, M.FullName
HAVING COUNT(L.LoanID) > 3;
