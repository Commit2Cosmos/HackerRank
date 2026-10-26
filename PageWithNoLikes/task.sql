SELECT p.page_id
FROM pages p
LEFT JOIN page_likes l
  ON p.page_id = l.page_id
GROUP BY p.page_id
HAVING COUNT(l.page_id) = 0
ORDER BY p.page_id ASC;