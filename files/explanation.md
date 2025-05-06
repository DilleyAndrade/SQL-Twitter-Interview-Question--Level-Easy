# Explicação da Solução

**Objetivo:** Obter um histograma de tweets postados por usuário em 2022.

### Etapas:
1. Vamos contar a quantidade tweets por usuário

SELECT
  user_id
  ,COUNT(tweet_id) AS total_tweets
FROM tweets
GROUP BY user_id
;

2. Agora vamos filtrar apenas os posts do ano de 2022

SELECT
  user_id
  ,COUNT(tweet_id) AS total_tweets
FROM tweets
WHERE TO_CHAR(tweet_date, 'YYYY') = '2022'
GROUP BY user_id
;

3. Agora vamos criar uma CTE para poder contar o total de usuários por quantidade de tweets

WITH my_cte
AS(
  SELECT
    user_id
    ,COUNT(tweet_id) AS total_tweets
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

### Exemplo de Saída:

| tweets_per_user | num_users |
|------------------|------------|
| 1                | 2          |
| 2                | 1          |
