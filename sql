(inner)
SELECT b.title, a.author_name
FROM bookss b
INNER JOIN Authors a
ON b.author_id = a.author_id;

(left)
SELECT b.title, a.author_name
FROM bookss b
LEFT JOIN Authors a
ON b.author_id = a.author_id;

(right)
SELECT a.author_name, b.title
FROM bookss b
RIGHT JOIN Authors a
ON b.author_id = a.author_id;

(full)
SELECT b.title, a.author_name
FROM bookss b
LEFT JOIN Authors a ON b.author_id = a.author_id
UNION
SELECT b.title, a.author_name
FROM bookss b
RIGHT JOIN Authors a ON b.author_id = a.author_id;

(self)
SELECT b.title AS book_title, rb.title AS related_book
FROM Related_Books r
JOIN bookss b ON r.book_id = b.book_id
JOIN bookss rb ON r.related_book_id = rb.book_id;
