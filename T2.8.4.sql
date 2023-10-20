SELECT category,  max(average_check)
FROM (SELECT category, order_date, runningAccumulate(sum_revenue, category) AS cumulative_revenue, runningAccumulate(cnt_order, category) AS cumulative_orders, divide(cumulative_revenue,cumulative_orders) as average_check  
FROM (SELECT category, order_date, sumState(revenue) AS sum_revenue, countState(order_date) AS cnt_order FROM sales GROUP BY category, order_date ORDER BY category, order_date))
GROUP BY category
ORDER BY category;