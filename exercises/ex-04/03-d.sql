SELECT c.client_no, c.name
FROM sales_order as so,
    sales_order_details as sod,
    product_master as p,
    client_master as c
WHERE so.client_no = c.client_no
    AND p.product_no = sod.product_no
    AND sod.order_no = so.order_no
    AND p.description = 'Lycra Tops';