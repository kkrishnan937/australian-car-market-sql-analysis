-- Show the top 3 most expensive cars within each brand and year.

with rankings as (SELECT c.brand,c.year,c.name,c.price,
		row_number() over(partition by c.brand ,c.year order by c.price) as rn
FROM cars c)

select * from rankings
where rn<=3
order by brand,year,price desc;