DROP TABLE IF EXISTS bookshelves;

CREATE TABLE bookshelves (
id SERIAL PRIMARY KEY, 
name VARCHAR(255));

-- Create a bookshelf table
Query 1: CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));

-- add data to the bookselves table
Query 2: INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;

-- get all the unique bookshelves and put them in the bookshelf table
Query 3: ALTER TABLE books ADD COLUMN bookshelf_id INT;

-- add a bookshelf_id to the books table
Query 4: UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;

-- populate bookshelf_id in books
Query 5: ALTER TABLE books DROP COLUMN bookshelf;

-- delete bookshelf from books
Query 6: ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);

