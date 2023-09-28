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

INSERT INTO Salesman_Master(salesman_no, salesman_name, address_one, address_two, city, pincode, state, sal_amt, tgt_to_get, ytd_sales, remarks) 
VALUES
('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra', 3000, 100, 50, 'Good'),
('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra', 3000, 200, 100, 'Good'),
('S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 3000, 200, 100, 'Good'),
('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra', 3500, 200, 150, 'Good');

SELECT * FROM Salesman_Master;

INSERT INTO Sales_Order(order_no, client_no, order_date, salesman_no, dely_type, bill_yn, dely_date, order_status)
VALUES
('O19001', 'C00001', '2002-07-20', 'S00001', 'F', 'N', '2004-06-12', 'In Process'),
('O19002', 'C00002', '2002-06-27', 'S00002', 'P', 'N', '2004-06-25', 'Cancelled'),
('O46865', 'C00003', '2002-02-20', 'S00003', 'F', 'Y', '2004-02-18', 'Fulfilled'),
('O19003', 'C00001', '2002-04-07', 'S00001', 'F', 'Y', '2004-04-03', 'Fulfilled'),
('O46866', 'C00004', '2002-05-22', 'S00002', 'P', 'N', '2004-05-20', 'Cancelled'),
('O19008', 'C00005', '2002-07-26', 'S00004', 'F', 'N', '2004-05-24', 'In Process');

SELECT * FROM Sales_Order;

INSERT INTO Sales_Order_Details(order_no, product_no, qty_ordered, qty_disp, product_rate)
VALUES
('O19001', 'P00001', 4, 4, 525),
('O19001', 'P07965', 2, 1, 8400),
('O19001', 'P07885', 2, 1, 5250),
('O19002', 'P00001', 10, 0, 525),
('O46865', 'P07868', 3, 3, 3150),
('O46865', 'P07885', 3, 1, 5250),
('O46865', 'P00001', 10, 10, 525),
('O46865', 'P0345', 4, 4, 1050),
('O19003', 'P06734', 2, 2, 1050),
('O19003', 'P06734', 1, 1, 12000),
('O46866', 'P07965', 1, 0, 8400),
('O46866', 'P07975', 1, 0, 1050),
('O19008', 'P00001', 10, 5, 525),
('O19008', 'P07975', 5, 3, 1050);

SELECT * FROM Sales_Order_Details;
