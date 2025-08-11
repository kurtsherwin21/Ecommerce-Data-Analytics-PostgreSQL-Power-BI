SELECT 
    c.age_range,
    COUNT(*) AS transactions,
    ROUND(SUM(si.item_total), 2) AS total_spent
FROM sales_items si
JOIN sales s ON si.sale_id = s.sale_id
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.age_range
ORDER BY total_spent DESC;