SELECT DISTINCT so.order_no,
    so.client_no,
    pd.description
FROM sales_order as so,
    product_master as pd,
    sales_order_details as sod
    LEFT JOIN product_master as p ON sod.product_no = p.product_no
    AND p.description = 'Pull Overs'
WHERE so.order_no = sod.order_no
    AND pd.product_no = sod.product_no;