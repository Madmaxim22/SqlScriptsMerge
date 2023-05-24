CREATE TABLE CUSTOMERS(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR(20),
    CONSTRAINT customer_name_surname_chk CHECK(name !='' AND surname !=''),
    CONSTRAINT customer_age_chk CHECK(age >0 AND age<100 AND age !=''),
    CONSTRAINT staff_chk_phone CHECK (phone_number REGEXP '[+]?[0-9]{1,3} ?\\(?[0-9]{3}\\)? ?[0-9]{2}[0-9 -]+[0-9]{2}')
);

INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES ('Максим', 'Ткачук', 60, '+79159554378'),
('Алексей', 'Петров', 28, '+79153611873'),
('Георгий', 'Критко', 34, '+79311647903'),
('София', 'Понаморева', 25, '+75513890021'),
('Владимир', 'Спиридонов', 45, '+71398271322');