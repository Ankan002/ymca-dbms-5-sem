SELECT S.product_no,
    SUM(P.sell_price)
FROM sales_order_details AS S,
    product_master AS P
GROUP BY S.product_no;