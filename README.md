# Histogram of Tweets

**SQL Twitter Interview Question**

## 🧠 Problema

Suponha que você tenha uma tabela com dados de tweets do Twitter. Escreva uma consulta SQL para obter um histograma de tweets postados por usuário no ano de 2022.

A saída deve mostrar:

- A quantidade de tweets por usuário como o **bucket** (coluna `tweet_bucket`)
- O número de usuários que postaram exatamente aquela quantidade de tweets (coluna `users_num`)

🔁 Em outras palavras: agrupe os usuários pela quantidade de tweets que postaram em 2022 e conte quantos usuários há em cada grupo.

---

## 💡 Exemplo de Retorno Esperado

| tweet_bucket | users_num |
|--------------|-----------|
| 1            | 2         |
| 2            | 1         |

---