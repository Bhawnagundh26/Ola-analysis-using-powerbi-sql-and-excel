Create database Ola2;
Use Ola2;

#1. Retrieve all successful booking
Create View SuccessfulBooking As
Select * from bookings
Where Booking_status='Success';

Select * from SuccessfulBooking;

#2. Find the average ride distance for each vehicle type
Create view ride_distance_for_each_vehicle as
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance 
FROM bookings 
GROUP BY Vehicle_Type;

Select * from ride_distance_for_each_vehicle;

#3. Get the total number of canceled rides by customer
create view canceled_rides_by_customer as
Select Count(*) from bookings
where Booking_Status='canceled by customer';

Select * from canceled_rides_by_customer;

#4. list the top 5 customers who booked the highest number of rides
create view top_5_customer as
SELECT customer_id, COUNT(booking_id) AS total_rides
FROM bookings
GROUP BY customer_id
ORDER BY total_rides DESC
LIMIT 5;

Select * from top_5_customer;

#5. Get the number of rides canceled by drivers due to personal and car related issues
create view rides_canceled_by_drivers_p_c_issues as
select count(*) from bookings
where canceled_rides_by_driver='Personal and Car related issues';

Select * from rides_canceled_by_drivers_p_c_issues;

#6. find the maximun and minimum driver rating from prime sedan bookings
create view max_min_driver_rating as
select max(driver_ratings)  as max_rating,
min(driver_ratings) as min_rating  from bookings
where vehicle_type='prime sedan';

select * from max_min_driver_rating;

#7. retrieve all rides where payment wasmade using UPI
create view upi_payments as 
select * from bookings
where  payment_method='UPI';

select * from upi_payments;

#8. find the average customer rating per vehicle type
create view avg_cust_rating as
select vehicle_type, avg(customer_rating) as avg_customer_rating from bookings 
group by vehicle_type;

select * from avg_cust_rating;

#9. calculate the total booking value of rides completely successfully
create view total_successful_ride_value as
select sum(booking_value) as total_successfully_value
from bookings
where booking_status='success';	

select * from total_successful_ride_value;

#10. list all incomplete rides along with the reason
create view incomplete_ride_reason as
select booking_id,  incomplete_rides_reason
from bookings
where incomplete_rides='yes';

select * from incomplete_ride_reason ;


