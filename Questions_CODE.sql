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

SELECT M.member_id, M.member_name,COUNT(*) AS books_per_member
FROM members AS M LEFT JOIN issued_status AS I
ON M.member_id = I.issued_member_id
GROUP BY M.member_id;

-- 6. Show the details of members who have never issued any book.

SELECT *
FROM members
WHERE member_id NOT IN (
	SELECT issued_member_id
    FROM issued_status
);

-- 7. Find the earliest and latest book issue date in the system.

SELECT *
FROM issued_status
ORDER BY issued_date;

-- 8. Get the names of employees who issued books to member `C109`.

SELECT DISTINCT(E.emp_name), I.issued_member_id
FROM (
	SELECT *
	FROM issued_status
	WHERE issued_member_id = "C109"
) AS I LEFT JOIN employees AS E
ON I.issued_emp_id = E.emp_id;

-- 9. Display all books that have been returned along with their return dates.

SELECT return_book_name, return_date
FROM return_status;

-- 10. Get the top 5 most recently issued books.

SELECT *
FROM issued_status
ORDER BY issued_date DESC
LIMIT 5;

-- Intermediate-Level Adhoc Queries (11–20)

-- 11. List the number of books issued by each employee (show emp ID and count).

SELECT issued_emp_id, COUNT(*) AS total_books_issued
FROM issued_status
GROUP BY issued_emp_id;

-- 12. Show members who have returned all the books they issued.

SELECT I.issued_member_id, R.issued_id
FROM issued_status AS I LEFT JOIN return_status AS R
ON I.issued_id = R.issued_id
WHERE I.issued_id IN (R.issued_id);

-- 13. For each book, show how many times it has been issued.

SELECT B.isbn, B.book_title, COUNT(*) AS no_of_issues
FROM books AS B LEFT JOIN issued_status AS I
ON B.isbn = I.issued_book_isbn
GROUP BY B.isbn;

-- 14. Find the most active member (who issued the most books).

SELECT issued_member_id, COUNT(*) AS total_books_issued
FROM issued_status
GROUP BY issued_member_id
ORDER BY total_books_issued DESC
LIMIT 1;

-- 15. Display books that have been issued multiple times to the same member.

SELECT M.member_id, M.member_name, I.issued_book_isbn, I.issued_book_name, COUNT(*) AS count_of_issue_per_member
FROM issued_status AS I LEFT JOIN MEMBERS AS M
ON M.member_id = I.issued_member_id
GROUP BY M.member_id, M.member_name, I.issued_book_isbn, I.issued_book_name
HAVING  COUNT(*) > 1
ORDER BY M.member_id;

-- Chat GPT Approach:
SELECT M.member_id, M.member_name, I.issued_book_isbn,
	   I.issued_book_name,
	   COUNT(*) AS count_of_issue_per_member
FROM MEMBERS AS M 
LEFT JOIN issued_status AS I
  ON M.member_id = I.issued_member_id
GROUP BY 
  M.member_id, 
  M.member_name, 
  I.issued_book_isbn, 
  I.issued_book_name
HAVING COUNT(*) > 1;

-- Advanced-Level Adhoc Queries (21–30)

-- 16. Label books as `Returned`, `Not Returned`.

SELECT I.issued_book_name,
	CASE
    WHEN I.issued_id = R.issued_id THEN "RETURNED"
    ELSE "NOT_RETURNED"
    END AS return_label
FROM issued_status AS I LEFT JOIN return_status AS R
ON I.issued_id = R.issued_id;

-- 17. Use `DENSE_RANK()` to rank members based on the number of books issued.

-- 18. Using `PARTITION BY`, show issue count per member, with a running total of issues.

-- 19. List members who returned books within 7 days of issuing (need subquery or CTE).

-- 20. Calculate the average time between issue and return for each member.

-- These queries demonstrate my ability to work with:

-- Basic SQL operations (`SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`)
-- Joins (`INNER`, `LEFT`, etc.)
-- Aggregate functions (`COUNT`, `AVG`, `MAX`, `MIN`)
-- Window functions (`RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`, `PARTITION BY`)
-- Subqueries and conditional logic (`CASE`, correlated queries)
-- Data quality checks and activity analysis
