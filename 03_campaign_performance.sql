SELECT 
    si.channel_campaigns AS campaign_name,
    COUNT(*) AS items_sold,
    ROUND(SUM(si.item_total), 2) AS revenue
FROM sales_items si
GROUP BY si.channel_campaigns
ORDER BY revenue DESC;
