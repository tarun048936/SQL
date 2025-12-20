use sakila;
show tables;
select * from payment where amount =2.99;
select amount, count(*) from payment group by amount;

select customer_id, sum(amount) from payment where amount>3 group by customer_id; 

select customer_id, count(amount) from payment where month(payment_date)=5 group by customer_id; 

-- select customer_id, count(amount), month(payment_date) from payment
-- where month(payment_date) = 5
-- group by customer_id,month(payment_date)
-- order by customer_id;


select staff_id, max(amount), avg(amount), sum(amount) from payment
where customer_id %2 =0
group by staff_id
order by staff_id;

-- amount, total transactions
-- staff_id = 1. (filter)
-- count
-- havo=ing total_transaction>30
select staff_id amount , count(*) from payment where staff_id=1
group by amount having count(*)>30;

-- find amount avrage and total amount spand for staff_id 1or 2
-- 						for each month and each year

select month(payment_date),count(customer_id),sum(amount),avg(amount)
from payment where staff_id=1 or staff_id=2 
group by month(payment_date);

SELECT YEAR(PAYMENT_DATE),MONTH(PAYMENT_DATE),STAFF_ID,COUNT(CUSTOMER_ID), AVG(AMOUNT), SUM(AMOUNT) FROM PAYMENT
GROUP BY YEAR(PAYMENT_DATE), MONTH(PAYMENT_DATE),STAFF_ID
ORDER BY  MONTH(PAYMENT_DATE)ASC,STAFF_ID ASC;

