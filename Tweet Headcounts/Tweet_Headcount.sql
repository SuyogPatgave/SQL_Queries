SELECT tweet_count, COUNT(user_id)
FROM(SELECT user_id, COUNT(tweet_id) AS tweet_count
     FROM tweets
     WHERE tweet_date BETWEEN '1/1/2022' AND '12/31/2022'
      GROUP BY user_id) temp1
GROUP BY tweet_count
