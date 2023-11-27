SELECT DISTINCT p.product_no,
    COUNT(p.product_no)
FROM sales_order as so,
    sales_order_details as sod
    LEFT JOIN product_master as p ON sod.product_no = p.product_no
WHERE so.order_no = sod.order_no
    AND EXTRACT(
        'MONTH'
        from so.dely_date
    ) = 6
GROUP BY p.product_no;