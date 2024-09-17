-- Create a Acquisitions_Management Database
CREATE DATABASE Acquisitions_Management;

-- To access the DB
USE Acquisitions_Management;

-- Create Books Table in Acquisitions_Management Database
CREATE TABLE Orders (
    id INT PRIMARY KEY,
    book_id INT,
    quantity INT,
    order_date DATE,
    total_cost DECIMAL(10, 2),
    FOREIGN KEY (book_id) REFERENCES book_management.Books(id)
);

-- Create Vendors Table in Acquisitions_Management Database
CREATE TABLE Vendors (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    address TEXT,
    contact_info TEXT
);

-- Create Order_Items Table in Acquisitions_Management Database
CREATE TABLE Order_Items (
    id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    cost DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (book_id) REFERENCES book_management.Books(id)
);

-- Create Receipts Table in Acquisitions_Management Database
CREATE TABLE Receipts (
    id INT PRIMARY KEY,
    order_id INT,
    receipt_date DATE,
    total_cost DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

-- Create Invoices Table in Acquisitions_Management Database
CREATE TABLE Invoices (
    id INT PRIMARY KEY,
    order_id INT,
    invoice_date DATE,
    total_cost DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

-- Insert into Orders
INSERT INTO Orders (id, book_id, quantity, order_date, total_cost) VALUES
(1, 1, 5, "2022-01-01", 100.00),
(2, 2, 10, "2022-02-01", 200.00),
(3, 3, 3, "2022-03-01", 75.00),
(4, 4, 8, "2022-04-01", 160.00);


-- Insert into Vendors
INSERT INTO Vendors (id, name, address, contact_info) VALUES
(1, "ABC Books", "123 Main St", "abcbooks@example.com"),
(2, " DEF Publishers", "456 Elm St", "defpub@example.com"),
(3, "GHI Distributors", "789 Oak St", "ghidist@example.com"),
(4, "JKL Wholesalers", "321 Maple St", "jklwhole@example.com"),
(5, "MNO Suppliers", "901 Pine St", "mnosupply@example.com");

-- Insert into Order_Items
INSERT INTO Order_Items (id, order_id, book_id, quantity, cost) VALUES
(1, 1, 1, 5, 20.00),
(2, 2, 2, 10, 20.00),
(3, 3, 3, 3, 25.00),
(4, 4, 4, 8, 20.00);

-- Insert into Receipts
INSERT INTO Receipts (id, order_id, receipt_date, total_cost) VALUES
(1, 1, "2022-01-15", 100.00),
(2, 2, "2022-02-15", 200.00),
(3, 3, "2022-03-20", 75.00),
(4, 4, "2022-04-25", 160.00);

-- Insert into Invoices
INSERT INTO Invoices (id, order_id, invoice_date, total_cost) VALUES
(1, 1, "2022-01-20", 100.00),
(2, 2, "2022-02-20", 200.00),
(3, 3, "2022-03-25", 75.00),
(4, 4, "2022-04-30", 160.00);
