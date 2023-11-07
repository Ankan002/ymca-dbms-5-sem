SELECT COUNT(product_no),
    product_no
FROM sales_order_details
GROUP BY(product_no);