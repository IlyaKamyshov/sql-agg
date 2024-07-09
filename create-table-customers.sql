CREATE SCHEMA IF NOT EXISTS netology;

CREATE TABLE IF NOT EXISTS netology.CUSTOMERS
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    name         VARCHAR(50),
    surname      VARCHAR(50),
    age          SMALLINT CHECK (age >= 0 AND age < 150),
    phone_number VARCHAR(50)
);

INSERT INTO netology.CUSTOMERS (NAME, surname, age, phone_number)
VALUES ('Ivan', 'Ivanov', 50, '+79160000000'),
       ('Petr', 'Petrov', 40, '+79161111111'),
       ('Sidor', 'Sidorov', 20, NULL),
       ('Maxim', 'Maximov', 27, '+79162222222'),
       ('Alexei', 'Maximov', 29, '+79162222222'),
       ('ALexei', 'Vasechkin', 36, NULL);