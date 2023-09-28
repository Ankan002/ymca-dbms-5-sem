CREATE TABLE Client_Master(
    client_no VARCHAR(6) PRIMARY KEY CHECK(client_no LIKE 'C%'),
    name VARCHAR(20) NOT NULL,
    address_one VARCHAR(30),
    address_two VARCHAR(30),
    city VARCHAR(15),
    pincode NUMERIC(8),
    state VARCHAR(15),
    bal_due NUMERIC(10, 2)
);

SELECT * FROM Client_Master;

CREATE TABLE Product_Master(
    product_no VARCHAR(6) PRIMARY KEY CHECK(product_no LIKE 'P%'),
    description VARCHAR(15) NOT NULL,
    profit_percent NUMERIC(4, 2) NOT NULL,
    unit_measure VARCHAR(10) NOT NULL,
    qty_on_hand NUMERIC(8) NOT NULL,
    reorder_lvl NUMERIC(8) NOT NULL,
    sell_price NUMERIC(8, 2) NOT NULL CHECK(sell_price != 0),
    cost_price NUMERIC(8, 2) NOT NULL CHECK(cost_price != 0)
);

SELECT * FROM Product_Master;

CREATE TABLE Salesman_Master(
    salesman_no VARCHAR(6) PRIMARY KEY CHECK(salesman_no LIKE 'S%'),
    salesman_name VARCHAR(20) NOT NULL,
    address_one VARCHAR(20) NOT NULL,
    address_two VARCHAR(20),
    city VARCHAR(20),
    pincode NUMERIC(8),
    state VARCHAR(20),
    sal_amt NUMERIC(8, 2) NOT NULL CHECK(sal_amt != 0),
    tgt_to_get NUMERIC(6, 2) NOT NULL CHECK(tgt_to_get != 0),
    ytd_sales NUMERIC(6, 2) NOT NULL,
    remarks VARCHAR(60)
);

SELECT * FROM Salesman_Master;

CREATE TABLE Sales_Order (
    order_no VARCHAR(6) PRIMARY KEY CHECK(order_no LIKE 'O%'),
    client_no VARCHAR(6) REFERENCES Client_Master(client_no),
    order_date DATE NOT NULL,
    dely_addr VARCHAR(25),
    salesman_no VARCHAR(6) REFERENCES Salesman_Master(salesman_no),
    dely_type CHAR(1) CHECK(dely_type='P' OR dely_type='F') DEFAULT 'F',
    bill_yn CHAR(1),
    dely_date DATE CHECK(dely_date >= order_date),
    order_status VARCHAR(10) CHECK(order_status IN('In Process', 'Fulfilled', 'BackOrder', 'Cancelled'))
);

SELECT * FROM Sales_Order;

CREATE TABLE Sales_Order_Details (
    order_no VARCHAR(6) REFERENCES Sales_Order(order_no),
    product_no VARCHAR(6) REFERENCES Product_Master(product_no),
    qty_ordered NUMERIC(8),
    qty_disp NUMERIC(8),
    product_rate NUMERIC(10, 2)
);

SELECT * FROM Sales_Order_Details;
