SELECT AVG(SD.qty_ordered),
    S.client_no
FROM sales_order_details as SD,
    sales_order AS S
WHERE SD.order_no = S.order_no
    AND SD.product_rate <= 15000
GROUP BY S.client_no;