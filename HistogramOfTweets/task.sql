WITH tweets_per_usr AS (
  SELECT user_id, COUNT(user_id) AS users_num
  FROM tweets
  WHERE tweet_date > '01.01.2022' and tweet_date < '01.01.2023'
  GROUP BY user_id
)
SELECT COUNT(users_num) AS tweet_bucket, users_num
FROM tweets_per_usr
GROUP BY users_num
ORDER BY tweet_bucket ASC;