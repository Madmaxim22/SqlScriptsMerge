CREATE TABLE ORDERS(
    id INT PRIMARY KEY AUTO_INCREMENT,
    date DATE NOT NULL,
    customer_id int,
    product_name VARCHAR(255) NOT NULL,
    amount int NOT NULL,
    FOREIGN KEY (customer_id)  REFERENCES CUSTOMERS (id) ON DELETE CASCADE
);

INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES ('2023-01-23', 4, 'Чипсы', 120),
('2023-05-13', 2, 'Свекла', 50),
('2023-05-19', 2, 'Рис', 40),
('2023-02-22', 1, 'Горох', 100),
('2023-04-29', 3, 'Торт', 340);