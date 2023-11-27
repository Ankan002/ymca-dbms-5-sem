SELECT c.name,
    c.address_one,
    c.address_two,
    c.city,
    c.pincode
FROM sales_order as s,
    client_master as c
WHERE s.client_no = c.client_no
    AND s.order_no = 'O19001';