-- Create a Reporting_and_Analytics Database
CREATE DATABASE Reporting_and_Analytics;

-- To access the DB
USE Reporting_and_Analytics;

-- Create Circulation_Stats Table in Reporting_and_Analytics Database
CREATE TABLE Circulation_Stats (
    id INT PRIMARY KEY,
    date DATE,
    total_checkouts INT,
    total_returns INT
);

-- Create Collection_Stats Table in Reporting_and_Analytics Database
CREATE TABLE Collection_Stats (
    id INT PRIMARY KEY,
    date DATE,
    total_books INT,
    total_authors INT
);

-- Create Patron_Stats Table in Reporting_and_Analytics Database
CREATE TABLE Patron_Stats (
    id INT PRIMARY KEY,
    date DATE,
    total_patrons INT,
    total_membership INT
);

-- Create Fine_Stats Table in Reporting_and_Analytics Database
CREATE TABLE Fine_Stats (
    id INT PRIMARY KEY,
    date DATE,
    total_fines DECIMAL(10, 2),
    total_payments DECIMAL(10, 2)
);

-- Create Survey_Responses Table in Reporting_and_Analytics Database
CREATE TABLE Survey_Responses (
    id INT PRIMARY KEY,
    date DATE,
    question_id INT,
    response_text TEXT
);

-- Insert into Circulation_Stats
INSERT INTO Circulation_Stats (id, date, total_checkouts, total_returns) VALUES
(1, "2022-01-01", 100, 50),
(2, "2022-02-01", 120, 60),
(3, "2022-03-01", 110, 55),
(4, "2022-04-01", 130, 65),
(5, "2022-05-01", 140, 70);

-- Insert into Collection_Stats
INSERT INTO Collection_Stats (id, date, total_books, total_authors) VALUES
(1, "2022-01-01", 10000, 500),
(2, "2022-02-01", 10100, 510),
(3, "2022-03-01", 10200, 520),
(4, "2022-04-01", 10300, 530),
(5, "2022-05-01", 10400, 540);

-- Insert into Patron_Stats
INSERT INTO Patron_Stats (id, date, total_patrons, total_membership) VALUES
(1, "2022-01-01", 500, 400),
(2, "2022-02-01", 510, 410),
(3, "2022-03-01", 520, 420),
(4, "2022-04-01", 530, 430),
(5, "2022-05-01", 540, 440);

-- Insert into Fine_Stats
INSERT INTO Fine_Stats (id, date, total_fines, total_payments) VALUES
(1, "2022-01-01", 100, 50),
(2, "2022-02-01", 120, 60),
(3, "2022-03-01", 110, 55),
(4, "2022-04-01", 130, 65),
(5, "2022-05-01", 140, 70);

-- Insert into Survey_Responses
INSERT INTO Survey_Responses (id, date, question_id, response_text) VALUES
(1, "2022-01-01", 1, "Excellent"),
(2, "2022-02-01", 2, "Good"),
(3, "2022-03-01", 1, "Excellent"),
(4, "2022-04-01", 3, "Fair"),
(5, "2022-05-01", 2, "Good");
