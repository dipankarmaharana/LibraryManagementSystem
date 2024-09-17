-- Create a Circulation_Management Database
CREATE DATABASE circulation_management;

-- To access the DB
USE circulation_management;

-- Create Checkouts Table in Circulation_Management Database
CREATE TABLE Checkouts (
    id INT PRIMARY KEY,
    book_id INT,
    patron_id INT,
    checkout_date DATE,
    due_date DATE,
    FOREIGN KEY (book_id) REFERENCES book_management.books(id),
    FOREIGN KEY (patron_id) REFERENCES patron_management.Patrons(id)
);

-- Create Returns Table in Circulation_Management Database
CREATE TABLE Returns (
    id INT PRIMARY KEY,
    checkout_id INT,
    return_date DATE,
    FOREIGN KEY (checkout_id) REFERENCES Checkouts(id)
);

-- Create Holds Table in Circulation_Management Database
CREATE TABLE Holds (
    id INT PRIMARY KEY,
    book_id INT,
    patron_id INT,
    hold_date DATE,
    expiration_date DATE,
    FOREIGN KEY (book_id) REFERENCES book_management.Books(id),
    FOREIGN KEY (patron_id) REFERENCES patron_management.Patrons(id)
);

-- Create Waitlists Table in Circulation_Management Database
CREATE TABLE Waitlists (
    id INT PRIMARY KEY,
    book_id INT,
    patron_id INT,
    waitlist_date DATE,
    FOREIGN KEY (book_id) REFERENCES book_management.Books(id),
    FOREIGN KEY (patron_id) REFERENCES patron_management.Patrons(id)
);

-- Create Checkout_History Table in Circulation_Management Database
CREATE TABLE Checkout_History (
    id INT PRIMARY KEY,
    book_id INT,
    patron_id INT,
    checkout_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES book_management.Books(id),
    FOREIGN KEY (patron_id) REFERENCES patron_management.Patrons(id)
);

-- Insert into Checkouts
INSERT INTO Checkouts (id, book_id, patron_id, checkout_date, due_date) VALUES
(1, 1, 1, "2022-01-01", "2022-01-31"),
(2, 2, 2, "2022-02-01", "2022-02-28"),
(3, 3, 3, "2022-03-01", "2022-03-31"),
(4, 4, 4, "2022-04-01", "2022-04-30"),
(5, 5, 5, "2022-05-01", "2022-05-31");


-- Insert into Returns
INSERT INTO Returns (id, checkout_id, return_date) VALUES
(1, 1, "2022-01-20"),
(2, 2, "2022-02-15"),
(3, 3, "2022-03-25"),
(4, 4, "2022-04-10"),
(5, 5, "2022-05-15");


-- Insert into Holds
INSERT INTO Holds (id, book_id, patron_id, hold_date, expiration_date) VALUES
(1, 1, 2, "2022-01-05", "2022-01-15"),
(2, 2, 3, "2022-02-10", "2022-02-20"),
(3, 3, 4, "2022-03-15", "2022-03-25"),
(4, 4, 5, "2022-04-20", "2022-04-30"),
(5, 5, 1, "2022-05-25", "2022-06-04");


-- Insert into Waitlists
INSERT INTO Waitlists (id, book_id, patron_id, waitlist_date) VALUES
(1, 1, 3, "2022-01-10"),
(2, 2, 4, "2022-02-15"),
(3, 3, 5, "2022-03-20"),
(4, 4, 1, "2022-04-25"),
(5, 5, 2, "2022-05-30");

-- Insert into Checkout_History
INSERT INTO Checkout_History (id, book_id, patron_id, checkout_date, return_date) VALUES
(1, 1, 1, "2022-01-01", "2022-01-20"),
(2, 2, 2, "2022-02-01", "2022-02-15"),
(3, 3, 3, "2022-03-01", "2022-03-25"),
(4, 4, 4, "2022-04-01", "2022-04-10"),
(5, 5, 5, "2022-05-01", "2022-05-15");
