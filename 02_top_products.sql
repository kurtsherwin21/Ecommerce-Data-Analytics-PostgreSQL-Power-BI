SELECT 
    p.product_name,
    SUM(si.quantity) AS units_sold,
    ROUND(SUM(si.item_total), 2) AS revenue
FROM sales_items si
JOIN products p ON si.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 10;