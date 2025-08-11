SELECT 
  DATE_TRUNC('month', sale_date) AS month,
  SUM(item_total) AS monthly_sales
FROM sales_items
GROUP BY month
ORDER BY month;

SELECT 
  p.product_name,
  SUM(si.quantity) AS units_sold,
  SUM(si.item_total) AS revenue
FROM sales_items si
JOIN products p ON si.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 10;


SELECT 
  si.channel_campaigns AS campaign_name,
  COUNT(*) AS items_sold,
  SUM(si.item_total) AS revenue
FROM sales_items si
GROUP BY si.channel_campaigns
ORDER BY revenue DESC;

SELECT 
  c.age_range,
  COUNT(*) AS transactions,
  SUM(si.item_total) AS total_spent
FROM sales_items si
JOIN sales s ON si.sale_id = s.sale_id
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.age_range
ORDER BY total_spent DESC;

SELECT 
  discounted,
  COUNT(*) AS items_sold,
  SUM(item_total) AS total_revenue
FROM sales_items
GROUP BY discounted;

SELECT 
  p.product_name,
  s.stock_quantity
FROM stock s
JOIN products p ON s.product_id = p.product_id
WHERE s.stock_quantity < 10;