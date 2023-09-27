ALTER TABLE Client_Master ADD telephone NUMERIC(10);
SELECT * FROM Client_Master;

ALTER TABLE Product_Master ALTER COLUMN sell_price TYPE NUMERIC(10, 2);
SELECT * FROM Product_Master;
