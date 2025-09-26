-- 3.What is the distribution of fuel types in the dataset, and what percentage of total listings does each fuel type represent?

SELECT c.fuel,count(*) as total_listings,
	round(count(*)*100/(select count(*)from cars),2) as per_share
FROM cars c
group by fuel
order by total_listings desc;