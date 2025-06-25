-- Task 2: Data Insertion and Null Handling (Library Management System)

-- Inserting students
INSERT INTO Student (student_id, name, email) VALUES (1, 'Anjali Mehta', 'anjali@example.com');
INSERT INTO Student (student_id, name, email) VALUES (2, 'Rahul Singh', 'rahul@example.com');
INSERT INTO Student (student_id, name, email) VALUES (3, 'Meena Kumari', NULL); -- Handling NULL email

-- Inserting books
INSERT INTO Book (book_id, title, author) VALUES (101, 'The Alchemist', 'Paulo Coelho');
INSERT INTO Book (book_id, title, author) VALUES (102, 'Wings of Fire', 'A.P.J Abdul Kalam');
INSERT INTO Book (book_id, title, author) VALUES (103, 'Zero to One', NULL); -- Author unknown (NULL)

-- Inserting issue records
INSERT INTO Issue_Record (issue_id, student_id, book_id, issue_date, return_date)
VALUES (1, 1, 101, '2024-06-01', '2024-06-10');

INSERT INTO Issue_Record (issue_id, student_id, book_id, issue_date, return_date)
VALUES (2, 2, 102, '2024-06-03', NULL); -- Book not yet returned

-- Updating student email
UPDATE Student SET email = 'meena.kumari@example.com' WHERE student_id = 3;

-- Updating return date of issued book
UPDATE Issue_Record SET return_date = '2024-06-12' WHERE issue_id = 2;

-- Deleting a book and handling cascade
DELETE FROM Book WHERE book_id = 103;
