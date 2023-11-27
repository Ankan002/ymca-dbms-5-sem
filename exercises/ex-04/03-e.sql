SELECT c.name
FROM client_master as c,
    (
        SELECT SUM(sod.product_rate * sod.qty_ordered) as price,
            so.client_no as cno
        FROM sales_order as so,
            sales_order_details as sod
        WHERE sod.order_no = so.order_no
        GROUP BY so.client_no
    ) as n
WHERE c.client_no = n.cno
    AND n.price >= 10000;