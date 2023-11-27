SELECT c.name
FROM client_master as c
WHERE c.client_no IN (
        SELECT so.client_no
        FROM sales_order as so,
            sales_order_details as sod
        WHERE so.order_no = sod.order_no
            AND so.order_date < '2002-06-01'
    )