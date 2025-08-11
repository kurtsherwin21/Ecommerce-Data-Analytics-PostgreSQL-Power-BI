SELECT 
    p.product_name,
    s.stock_quantity
FROM stock s
JOIN products p ON s.product_id = p.product_id
WHERE s.stock_quantity < 10
ORDER BY s.stock_quantity ASC;