--liquibase formatted sql

--changeset jabedkaium:123459
INSERT INTO users (name, email) VALUES ('abc', 'abc@example.com');
INSERT INTO users (name, email) VALUES ('def', 'def@example.com');

--changeset jabedkaium:123460
INSERT INTO products (name, price) VALUES ('Product A', 10.99);
INSERT INTO products (name, price) VALUES ('Product B', 19.99);

--changeset jabedkaium:123461
INSERT INTO orders (user_id, product_id, quantity) VALUES (1, 1, 2);
INSERT INTO orders (user_id, product_id, quantity) VALUES (1, 2, 1);
INSERT INTO orders (user_id, product_id, quantity) VALUES (2, 1, 1);
--rollback DELETE FROM orders;