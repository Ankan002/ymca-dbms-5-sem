SELECT client_master.name
FROM sales_order as so,
    sales_order_details as sod,
    product_master as p,
    client_master
WHERE so.order_no = sod.order_no
    AND p.product_no = sod.product_no
    AND p.description = 'Trousers'
    AND so.client_no = client_master.client_no;