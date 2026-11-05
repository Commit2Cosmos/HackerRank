SELECT u.city, COUNT(t.order_id) AS total_orders
FROM trades AS t
JOIN users AS u
  ON t.user_id = u.user_id
  AND t.status = 'Completed'
GROUP BY u.city
ORDER BY COUNT(t.order_id) DESC
LIMIT 3;