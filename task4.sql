-- Task 4: Aggregate Functions & Grouping (Library Management System)

-- 1. Total number of students
SELECT COUNT(*) AS total_students FROM Student;

-- 2. Total number of books
SELECT COUNT(*) AS total_books FROM Book;

-- 3. Number of books issued by each student
SELECT student_id, COUNT(*) AS total_books_issued
FROM Issue_Record
GROUP BY student_id;

-- 4. Average number of issues per student
SELECT AVG(books_issued) AS average_issued
FROM (
    SELECT student_id, COUNT(*) AS books_issued
    FROM Issue_Record
    GROUP BY student_id
) AS sub;

-- 5. Students who have issued more than 1 book
SELECT student_id, COUNT(*) AS issued_count
FROM Issue_Record
GROUP BY student_id
HAVING COUNT(*) > 1;

-- 6. Count of issues for each book
SELECT book_id, COUNT(*) AS times_issued
FROM Issue_Record
GROUP BY book_id;

-- 7. Number of students with email provided (non-null)
SELECT COUNT(*) AS students_with_email
FROM Student
WHERE email IS NOT NULL;

-- 8. Most recently issued book(s)
SELECT * FROM Issue_Record
ORDER BY issue_date DESC
LIMIT 1;

-- 9. Count of issued and returned books
SELECT 
    COUNT(*) AS total_issued,
    COUNT(return_date) AS total_returned
FROM Issue_Record;

-- 10. Book issue stats with more than 1 issue
SELECT book_id, COUNT(*) AS issue_count
FROM Issue_Record
GROUP BY book_id
HAVING COUNT(*) > 1;
