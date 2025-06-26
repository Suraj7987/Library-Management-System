-- Task 3: SELECT Queries (Library Management System)

-- 1. Display all students
SELECT * FROM Student;

-- 2. Display all books written by A.P.J Abdul Kalam
SELECT * FROM Book WHERE author = 'A.P.J Abdul Kalam';

-- 3. List students who have NULL email
SELECT * FROM Student WHERE email IS NULL;

-- 4. Display books with title containing 'Fire'
SELECT * FROM Book WHERE title LIKE '%Fire%';

-- 5. Show issue records where return_date is still NULL (not returned)
SELECT * FROM Issue_Record WHERE return_date IS NULL;

-- 6. Display books issued between '2024-06-01' and '2024-06-05'
SELECT * FROM Issue_Record WHERE issue_date BETWEEN '2024-06-01' AND '2024-06-05';

-- 7. List all students in alphabetical order
SELECT * FROM Student ORDER BY name ASC;

-- 8. Show only first 2 books in the table
SELECT * FROM Book LIMIT 2;

-- 9. Display student names and emails only
SELECT name, email FROM Student;

-- 10. List all distinct book authors
SELECT DISTINCT author FROM Book;

-- BONUS: Students who issued book titled 'The Alchemist'
SELECT S.name, B.title
FROM Student S
JOIN Issue_Record IR ON S.student_id = IR.student_id
JOIN Book B ON IR.book_id = B.book_id
WHERE B.title = 'The Alchemist';
