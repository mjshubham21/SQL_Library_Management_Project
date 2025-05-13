-- 12-05-2025, Monday;
-- Adhoc Questions for the Project.

-- Library Management System schema with the following key tables:

-- `members`
-- `employees`
-- `books`
-- `issued_status`
-- `return_status`

-- Basic-Level Adhoc Queries (1–10)

-- 1. List all books that have never been issued.

SELECT B.isbn, B.book_title
FROM books AS B LEFT JOIN issued_status AS I
ON B.isbn = i.issued_book_isbn
WHERE issued_id IS NULL;

-- 2. Find the total number of members registered in the system.

SELECT COUNT(*) AS total_members
FROM members;

-- 3. Show all books issued by employee `E106`.

SELECT issued_book_name, issued_emp_id
FROM issued_status
WHERE issued_emp_id = "E106";

-- 4. Display the list of books returned in the month of May 2024.

SELECT *
FROM return_status
WHERE return_date LIKE "%2024-05%";

-- 5. Count how many books each member has issued.

-- 6. Show the details of members who have never issued any book.

-- 7. Find the earliest and latest book issue date in the system.

-- 8. Get the names of employees who issued books to member `C109`.

-- 9. Display all books that have been returned along with their return dates.

-- 10. Get the top 5 most recently issued books.


-- Intermediate-Level Adhoc Queries (11–20)

-- 11. List the number of books issued by each employee (show emp ID and count).

-- 12. Find members who have issued more than 3 books.

-- 13. Show members who have returned all the books they issued.

-- 14. List the books which have been issued but not returned yet.

-- 15. For each book, show how many times it has been issued.

-- 16. Find the most active member (who issued the most books).

-- 17. Get all book names and return dates where the return happened more than 30 days after the issue date.

-- 18. Display books that have been issued multiple times to the same member.

-- 19. List members and the total number of books they returned.

-- 20. Get a list of employees who have helped issue books that were later returned.


-- Advanced-Level Adhoc Queries (21–30)

-- 21. Use `JOIN` to show: member name, book name, issue date, return date.

-- 22. Use `LEFT JOIN` to list all issued books with their return status (if returned or not).

-- 23. Use `CASE` to label books as `Returned`, `Not Returned`.

-- 24. Use `RANK()` to assign a rank to employees based on the number of books they’ve issued.

-- 25. Use `DENSE_RANK()` to rank members based on the number of books issued.

-- 26. Using `PARTITION BY`, show issue count per member, with a running total of issues.

-- 27. Using `PARTITION BY`, find the first and last book issued by each employee.

-- 28. List members who returned books within 7 days of issuing (need subquery or CTE).

-- 29. Calculate the average time between issue and return for each member.

-- 30. Show books that have been issued to multiple members (distinct member count > 1).


-- These queries demonstrate my ability to work with:

-- Basic SQL operations (`SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`)
-- Joins (`INNER`, `LEFT`, etc.)
-- Aggregate functions (`COUNT`, `AVG`, `MAX`, `MIN`)
-- Window functions (`RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`, `PARTITION BY`)
-- Subqueries and conditional logic (`CASE`, correlated queries)
-- Data quality checks and activity analysis
