CREATE DATABASE  IF NOT EXISTS `wcs_library` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `wcs_library`;

DROP TABLE IF EXISTS `book`;
CREATE TABLE book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    description TEXT
);

-- Insert example books
INSERT INTO book (title, author, description) VALUES
    ('The Great Gatsby', 'F. Scott Fitzgerald', 'A story of the Jazz Age and the American Dream.'),
    ('To Kill a Mockingbird', 'Harper Lee', 'A classic of modern American literature.'),
    ('1984', 'George Orwell', 'A dystopian novel set in a totalitarian society.'),
    ('The Hobbit', 'J.R.R. Tolkien', 'A fantasy novel about the quest for treasure and adventure.'),
    ('Pride and Prejudice', 'Jane Austen', 'A romantic novel exploring themes of love and class.');

GRANT ALL PRIVILEGES ON `wcs_library`.* TO 'h4rryp0tt3r'@'localhost';
FLUSH PRIVILEGES;