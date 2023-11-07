SELECT SUM(SD.product_rate) as total_rate
FROM sales_order_details as SD,
    sales_order AS S
WHERE SD.order_no = S.order_no
    AND EXTRACT(
        'Month'
        from S.order_date
    ) = 6;