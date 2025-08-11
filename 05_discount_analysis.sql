SELECT 
    discounted,
    COUNT(*) AS items_sold,
    ROUND(SUM(item_total), 2) AS total_revenue
FROM sales_items
GROUP BY discounted;