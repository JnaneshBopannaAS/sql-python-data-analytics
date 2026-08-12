# Write your MySQL query statement below
SELEct l.book_id,l.title,l.author,l.genre,l.publication_year,l.total_copies as current_borrowers
FROM library_books l INNER JOIN borrowing_records b ON l.book_id = b.book_id
WHERE b.return_date IS NULL
GROUP BY l.book_id
HAVING Count(*) = l.total_copies
ORDER by current_borrowers desc,l.title