CREATE TABLE Client_Master(
    client_no VARCHAR(6) PRIMARY KEY,
    name VARCHAR(20),
    address_one VARCHAR(30),
    address_two VARCHAR(30),
    city VARCHAR(15),
    pincode NUMERIC(8),
    state VARCHAR(15),
    bal_due NUMERIC(10, 2)
);

CREATE TABLE Product_Master(
    product_no VARCHAR(6) PRIMARY KEY,
    description VARCHAR(15),
    profit_percent NUMERIC(4, 2),
    unit_measure VARCHAR(10),
    qty_on_hand NUMERIC(8),
    reorder_lvl NUMERIC(8),
    sell_price NUMERIC(8, 2),
    cost_price NUMERIC(8, 2)
);

CREATE TABLE Salesman_Master(
    salesman_no VARCHAR(6) PRIMARY KEY,
    salesman_name VARCHAR(20),
    address_one VARCHAR(20),
    address_two VARCHAR(20),
    city VARCHAR(20),
    pincode NUMERIC(8),
    state VARCHAR(20),
    sale_amt NUMERIC(8, 2),
    tgt_to_get NUMERIC(6, 2),
    ytd_sales NUMERIC(6, 2),
    remarks VARCHAR(60)
);
