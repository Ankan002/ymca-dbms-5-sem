SELECT DISTINCT sod.product_no,
    p.description
FROM client_master as c,
    sales_order as so
    LEFT JOIN sales_order_details as sod ON so.order_no = sod.order_no
    LEFT JOIN product_master as p ON p.product_no = sod.product_no
WHERE c.name = 'Ivan Bayross'
    AND c.client_no = so.client_no;