WITH users_2_comms AS (
  SELECT user_id
  FROM posts
  WHERE post_date >= '2021-01-01' AND post_date < '2022-01-01'
  GROUP BY user_id
  HAVING COUNT(*) >= 2
)
SELECT p.user_id, MAX(post_date)::date-MIN(post_date)::date AS days_between
FROM posts AS p
JOIN users_2_comms AS u
  ON p.user_id = u.user_id
GROUP BY p.user_id;