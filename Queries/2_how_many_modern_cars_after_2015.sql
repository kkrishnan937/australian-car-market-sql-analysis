-- 2.How many modern cars (manufactured after 2015) does each brand offer?

SELECT c.brand,count(*) as total_modern_cars
FROM cars c
WHERE c.year > 2015
group by c.brand
order by total_modern_cars desc;


