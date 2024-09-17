-- Create a Patron_Management Database
CREATE DATABASE patron_management;

-- To access the DB
USE patron_management;

-- Create Patrons Table in Patron_Management Database
CREATE TABLE Patrons (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(15),
    address TEXT
);

-- Create Membership_Types Table in Patron_Management Database
CREATE TABLE Membership_Types (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    duration INT
);

-- Create Patron_Membership Table in Patron_Management Database
CREATE TABLE Patron_Membership (
    id INT PRIMARY KEY,
    patron_id INT,
    membership_type_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (patron_id) REFERENCES Patrons(id),
    FOREIGN KEY (membership_type_id) REFERENCES Membership_Types(id)
);

-- Create Patron_Fines Table in Patron_Management Database
CREATE TABLE Patron_Fines (
    id INT PRIMARY KEY,
    patron_id INT,
    fine_amount DECIMAL(10, 2),
    fine_date DATE,
    FOREIGN KEY (patron_id) REFERENCES Patrons(id)
);

-- Create Patron_Payments Table in Patron_Management Database
CREATE TABLE Patron_Payments (
    id INT PRIMARY KEY,
    patron_id INT,
    payment_amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (patron_id) REFERENCES Patrons(id)
);

-- Insert into Patrons
INSERT INTO Patrons (id, name, email, phone_number, address) VALUES
(1, "John Doe", "johndoe@example.com", "123-456-7890", "123 Main St"),
(2, "Jane Smith", "janesmith@example.com", "987-654-3210", "456 Elm St"),
(3, "Bob Johnson", "bobjohnson@example.com", "555-123-4567", "789 Oak St"),
(4, "Alice Brown", "alicebrown@example.com", "111-222-3333", "321 Maple St"),
(5, "Mike Davis", "mikedavis@example.com", "444-555-6666", "901 Pine St");

-- Insert into Membership_Types
INSERT INTO Membership_Types (id, name, description, duration) VALUES
(1, "Basic", "Access to library materials for 1 year", 365),
(2, "Premium", "Access to library materials, digital media, and special events for 1 year", 365),
(3, "Student", "Access to library materials for 6 months", 180),
(4, "Senior", "Access to library materials for 1 year, with discounts on programs and services", 365),
(5, "Family", "Access to library materials for 1 year, for up to 5 family members", 365);


-- Insert into Patron_Membership
INSERT INTO Patron_Membership (id, patron_id, membership_type_id, start_date, end_date) VALUES
(1, 1, 1, "2022-01-01", "2023-01-01"),
(2, 2, 2, "2022-06-01", "2023-06-01"),
(3, 3, 3, "2022-09-01", "2023-03-01"),
(4, 4, 4, "2022-03-01", "2023-03-01"),
(5, 5, 5, "2022-12-01", "2023-12-01");


-- Insert into Patron_Fines
INSERT INTO Patron_Fines (id, patron_id, fine_amount, fine_date) VALUES
(1, 1, 5.00, "2022-02-01"),
(2, 2, 10.00, "2022-07-01"),
(3, 3, 2.00, "2022-10-01"),
(4, 4, 8.00, "2022-04-01"),
(5, 5, 12.00, "2022-11-01");


-- Insert into Patron_Payments
INSERT INTO Patron_Payments (id, patron_id, payment_amount, payment_date) VALUES
(1, 1, 20.00, "2022-01-15"),
(2, 2, 50.00, "2022-06-15"),
(3, 3, 15.00, "2022-09-15"),
(4, 4, 30.00, "2022-03-15"),
(5, 5, 60.00, "2022-12-15");