CREATE SCHEMA IF NOT EXISTS netology;

CREATE TABLE IF NOT EXISTS netology.ORDERS
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    date         DATETIME,
    customer_id  INT,
    product_name VARCHAR(255),
    amount       INT,
    FOREIGN KEY (customer_id) REFERENCES netology.CUSTOMERS (id)
);

INSERT INTO netology.ORDERS (date, customer_id, product_name, amount)
VALUES ('2024-01-01', 1, 'Bread', 1),
       ('2024-01-02', 2, 'Meat', 2),
       ('2024-01-03', 3, 'Milk', 1),
       ('2024-01-03', 3, 'Sugar', 4),
       ('2024-01-04', 4, 'Water', 2),
       ('2024-01-05', 5, 'Juice', 1),
       ('2024-01-05', 6, 'Cheese', 5),
       ('2024-01-05', 6, 'Butter', 3);