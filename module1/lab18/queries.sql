1)SELECT DISTINCT prime_genre FROM apple_app.apple_app;
2)SELECT SUM(rating_count_tot) as total_rating, prime_genre
FROM apple_app.apple_app
GROUP BY prime_genre
ORDER BY total_rating DESC;
3)SELECT COUNT(id) AS count_of_apps, prime_genre
FROM apple_app.apple_app
GROUP BY prime_genre
ORDER BY count_of_apps DESC
LIMIT 1;
4)SELECT COUNT(id) AS count_of_apps, prime_genre
FROM apple_app.apple_app
GROUP BY prime_genre
ORDER BY count_of_apps ASC
LIMIT 1;
5)SELECT SUM(rating_count_tot) as total_rating, prime_genre
FROM apple_app.apple_app
GROUP BY prime_genre
ORDER BY total_rating DESC
LIMIT 10;
6)SELECT user_rating,track_name
FROM apple_app.apple_app
ORDER BY user_rating DESC
LIMIT 10;


10)SELECT user_rating,track_name, rating_count_tot
FROM apple_app.apple_app
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;
11)SELECT price ,track_name, rating_count_tot
FROM apple_app.apple_app
ORDER BY price DESC, rating_count_tot DESC
LIMIT 10;