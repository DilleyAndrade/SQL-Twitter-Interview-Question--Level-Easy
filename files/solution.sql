WITH my_cte
AS (
  SELECT
    user_id
    ,COUNT(tweet_id) as total_tweets
  FROM tweets
  WHERE TO_CHAR(tweet_date, 'YYYY') = '2022'
  GROUP BY user_id
)
SELECT
  total_tweets AS tweet_bucket
  ,COUNT(user_id) AS users_num
FROM my_cte
GROUP BY total_tweets
;