SELECT p.product_no,
    p.description,
    SUM(sod.qty_ordered)
FROM sales_order as so,
    sales_order_details as sod,
    product_master as p,
    client_master as c
WHERE so.order_no = sod.order_no
    AND sod.product_no = p.product_no
    AND so.client_no = c.client_no
    AND c.client_no IN ('C00001', 'C00002')
GROUP BY p.product_no;