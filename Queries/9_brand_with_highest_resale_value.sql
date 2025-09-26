-- Which brands have the highest resale value (average price for cars older than 10 years)?

SELECT c.brand,count(*) as total_listings , round(avg(c.price)) as avg_resale_price
FROM cars c
WHERE c.year <= year(curdate())-10 -- this dataset stops at 2022 , i am using this for dynamicity
group by c.brand
having count(*) > 100
order by avg_resale_price desc;