-- Which brands have more than 100 listings in the dataset?

SELECT c.brand,count(*) as total_listings
FROM cars c
group by c.brand
having total_listings > 100
order by total_listings desc;