SELECT p.product_no, SUM(sod.qty_ordered)
FROM sales_order as so,
    sales_order_details as sod
    LEFT JOIN product_master as p ON sod.product_no = p.product_no
WHERE so.order_no = sod.order_no
GROUP BY p.product_no
ORDER BY SUM(sod.qty_ordered) DESC;