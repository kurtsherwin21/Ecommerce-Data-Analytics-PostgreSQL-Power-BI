WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', sale_date) AS month,
        ROUND(SUM(item_total), 2) AS monthly_sales
    FROM sales_items
    GROUP BY month
)
SELECT 
    TO_CHAR(month, 'YYYY-MM') AS month,
    monthly_sales
FROM monthly_sales
ORDER BY month;