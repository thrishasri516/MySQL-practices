DROP TABLE IF EXISTS zomato;
DROP TABLE IF EXISTS blinkit;

CREATE TABLE zomato (
    order_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(50),
    order_date DATE,
    order_value DECIMAL(8,2)
);

INSERT INTO zomato VALUES

(101, 1, 'Rahul', '2025-01-05', 450.00),
(102, 2, 'Sneha', '2025-01-10', 520.00),

(103, 3, 'Arjun', '2025-02-03', 330.00),
(104, 4, 'Divya', '2025-02-15', 610.00),

(105, 5, 'Neha', '2025-01-12', 200.00),
(106, 5, 'Neha', '2025-02-18', 250.00),
(107, 6, 'Kiran', '2025-01-20', 500.00),
(108, 6, 'Kiran', '2025-02-22', 700.00);

CREATE TABLE blinkit (
    order_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(50),
    order_date DATE,
    order_value DECIMAL(8,2)
);

INSERT INTO blinkit VALUES

(201, 2, 'Sneha', '2025-02-10', 180.00),
(202, 7, 'Ravi', '2025-02-13', 550.00),

(203, 8, 'Priya', '2025-01-17', 320.00),

(204, 5, 'Neha', '2025-01-25', 400.00),
(205, 5, 'Neha', '2025-02-05', 350.00),
(206, 6, 'Kiran', '2025-01-09', 300.00),
(207, 6, 'Kiran', '2025-02-20', 600.00);

INSERT INTO blinkit VALUES
(208, 9, 'Manoj', '2025-02-14', 470.00);
