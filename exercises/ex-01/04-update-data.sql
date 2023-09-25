UPDATE Client_Master SET city='Bangalore' WHERE client_no='C00005';
SELECT * FROM Client_Master WHERE client_no='C00005';

UPDATE Client_Master SET bal_due=1000 WHERE client_no='C00001';
SELECT * FROM Client_Master WHERE client_no='C00001';

UPDATE Product_Master SET cost_price=950 WHERE description='Trousers';
SELECT * FROM Product_Master WHERE description='Trousers';

UPDATE Salesman_Master SET city='Pune';
SELECT * FROM Salesman_Master;
