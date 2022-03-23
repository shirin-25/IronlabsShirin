SELECT * FROM olist.order_items LIMIT 10;

1. 
SELECT order_id, price FROM olist.order_items ORDER BY price DESC LIMIT 1;
SELECT order_id, price FROM olist.order_items ORDER BY price ASC LIMIT 1;

2.
SELECT shipping_limit_date FROM olist.order_items ORDER BY shipping_limit_date LIMIT 1;
-- Last date:
SELECT shipping_limit_date FROM olist.order_items ORDER BY shipping_limit_date DESC LIMIT 1;

3. From the customers table, 
SELECT * FROM olist.customers LIMIT 10;

SELECT customer_state, count(customer_id)G FROM olist.customers GROUP BY customer_state ORDER BY count(customer_id) DESC;

SELECT customer_state, count(customer_id)G FROM olist.customers GROUP BY customer_state ORDER BY count(customer_id) DESC LIMIT 1;

SELECT customer_state, count(customer_unique_id)G FROM olist.customers GROUP BY customer_state ORDER BY count(customer_unique_id) DESC LIMIT 1;

4.
SELECT customer_city, count(customer_id) FROM olist.customers WHERE customer_state = 'SP' GROUP BY customer_city ORDER BY count(customer_id) DESC LIMIT 20;

5.
SELECT * FROM olist.closed_deals LIMIT 10;
-- Answer:
SELECT DISTINCT business_segment FROM olist.closed_deals WHERE business_segment <> 'Null';

6.
SELECT business_segment, sum(declared_monthly_revenue) FROM olist.closed_deals
GROUP BY business_segment
ORDER BY sum(declared_monthly_revenue) DESC
LIMIT 3;
7.
SELECT * FROM olist.order_reviews
LIMIT 10;
-- Answer:
SELECT review_score, count(DISTINCT review_id) FROM olist.order_reviews
GROUP BY review_score
ORDER BY review_score DESC;

8.  
SELECT review_score, count(review_score),
CASE WHEN review_score = '1' THEN 'Terrible'
WHEN review_score = '2' THEN 'Bad'
WHEN review_score = '3' THEN 'Acceptable'
WHEN review_score = '4' THEN 'Good'
ELSE 'Very Good!'
END AS Description_review
FROM olist.order_reviews
GROUP BY review_score
ORDER BY count(review_score) DESC;


9. 
SELECT review_score, count(review_score) as Frequency,
CASE WHEN review_score = '1' THEN 'Terrible'
WHEN review_score = '2' THEN 'Bad'
WHEN review_score = '3' THEN 'Acceptable'
WHEN review_score = '4' THEN 'Good'
ELSE 'Very Good!'
END AS Description_review
FROM olist.order_reviews
GROUP BY review_score
ORDER BY count(review_score) DESC
LIMIT 1;