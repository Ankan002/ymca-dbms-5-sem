SELECT p.product_no,
    p.description
FROM product_master as p
WHERE p.product_no NOT IN (
        SELECT sod.product_no
        FROM sales_order as so,
            sales_order_details as sod
        WHERE so.order_no = sod.order_no
    )