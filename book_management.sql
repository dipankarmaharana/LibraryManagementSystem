-- Create a Book_Management Database
CREATE DATABASE Book_Management;

-- To access the DB
USE Book_Management;

-- Create Books Table in Book_Management Database
CREATE TABLE Books (
    id INT PRIMARY KEY,
	title VARCHAR(255),
    author VARCHAR(255),
    publication_date DATE,
    ISBN VARCHAR(13)
);

-- Create Authors Table in Book_Management Database
CREATE TABLE Authors (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    biography TEXT
);

-- Create Publishers Table in Book_Management Database
CREATE TABLE Publishers (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    address TEXT
);

-- Create Genres Table in Book_Management Database
CREATE TABLE Genres (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT
);

-- Create Book_Genres Table in Book_Management Database
CREATE TABLE Book_Genres (
    id INT PRIMARY KEY,
    book_id INT,
    genre_id INT,
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (genre_id) REFERENCES Genres(id)
);

-- Insert into Books
INSERT INTO Books (id, title, author, publication_date, ISBN) VALUES
(1, "To Kill a Mockingbird", "Harper Lee", "1960-07-11", "9780061120084"),
(2, "1984", "George Orwell", "1949-06-08", "9780451524935"),
(3, "The Great Gatsby", "F. Scott Fitzgerald", "1925-04-10", "9780743273565"),
(4, "Pride and Prejudice", "Jane Austen", "1813-01-28", "9780141439511");

-- Insert into Authors
INSERT INTO Authors (id, name, biography) VALUES
(1, "Harper Lee", "Harper Lee was an American novelist known for her Pulitzer Prize-winning novel, To Kill a Mockingbird."),
(2, "George Orwell", "George Orwell was a British novelist, essayist, and critic known for his dystopian novel, 1984."),
(3, "F. Scott Fitzgerald", "F. Scott Fitzgerald was an American novelist and short story writer known for his novels and stories that capture the essence of the Jazz Age."),
(4, "Jane Austen", "Jane Austen was an English novelist known for her novels of manners and romance, such as Pride and Prejudice.");

-- Insert into Publishers
INSERT INTO Publishers (id, name, address) VALUES
(1, "J.B. Lippincott & Co.", "Philadelphia, PA"),
(2, "Secker and Warburg", "London, UK"),
(3, "Charles Scribner's Sons", "New York, NY"),
(4, "T. Egerton", "London, UK");

-- Insert into Genres
INSERT INTO Genres (id, name, description) VALUES
(1, "Fiction", "Novels and short stories that are not based on real events."),
(2, "Classics", "Novels and works of literature considered to be of high importance and influence."),
(3, "Mystery", "Novels and stories that involve solving a puzzle or uncovering a hidden truth."),
(4, "Rockstory", "Novels and stories that focus on the relationship between characters.");

-- Insert into Book_Genres
INSERT INTO Book_Genres (id, book_id, genre_id) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 2),
(4, 4, 4);
