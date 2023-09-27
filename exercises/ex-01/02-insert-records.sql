INSERT INTO Client_Master(client_no, name, city, pincode, state, bal_due) 
VALUES
('C00001', 'Ivan Bayross', 'Mumbai', 400054, 'Maharashtra', 15000),
('C00002', 'Mamta Mazumdar', 'Madras', 780001, 'Tamil Nadu', 0),
('C00003', 'Chhaya Bankar', 'Mumbai', 400057, 'Maharashtra', 5000),
('C00004', 'Ivan Bayross', 'Bangalore', 560001, 'Karnataka', 0),
('C00005', 'Ivan Bayross', 'Mumbai', 400060, 'Maharashtra', 2000),
('C00006', 'Ivan Bayross', 'Mangalore', 560050, 'Karnataka', 0);

SELECT * FROM Client_Master;

INSERT INTO Product_Master(product_no, description, profit_percent, unit_measure, qty_on_hand, reorder_lvl, sell_price, cost_price) 
VALUES
('P00001', 'T Shirts', 5, 'Piece', 200, 50, 350, 250),
('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350),
('P06734', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450),
('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500),
('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550),
('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450),
('P07965', 'Denim Shirts', 4, 'Piece', 100, 40, 350, 250),
('P07975', 'Lycra Tops', 5, 'Piece', 70, 30, 300, 175),
('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300);

SELECT * FROM Product_Master;

INSERT INTO Salesman_Master(salesman_no, salesman_name, address_one, address_two, city, pincode, state, sale_amt, tgt_to_get, ytd_sales, remarks) 
VALUES
('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra', 3000, 100, 50, 'Good'),
('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra', 3000, 200, 100, 'Good'),
('S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 3000, 200, 100, 'Good'),
('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra', 3500, 200, 150, 'Good');

SELECT * FROM Salesman_Master;
