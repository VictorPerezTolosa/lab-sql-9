use sakila;

-- Instructions

-- In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.

-- Create a table rentals_may to store the data from rental table with information for the month of May.
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

select * from rental;
select * from rental where month(rental_date) = 5;  -- Filtered values for the month of May

drop table if exists rentals_may;

create table rentals_may
as select * from rental where month(rental_date) = 5;

select * from rentals_may; -- checking the results


-- Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.

select * from rental;
select * from rental where month(rental_date) = 6;  -- Filtered values for the month of June

drop table if exists rentals_june;

create table rentals_june
as select * from rental where month(rental_date) = 6;

select * from rentals_june; -- checking the results


-- Check the number of rentals for each customer for May.

select * from rentals_may;
select customer_id, count(*) as "number of rentals" from rentals_may group by customer_id order by customer_id;

-- Check the number of rentals for each customer for June.

select * from rentals_june;
select customer_id, count(*) as "number of rentals" from rentals_june group by customer_id order by customer_id;

-- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:
-- Check the number of rentals for each customer for May
-- Check the number of rentals for each customer for June
-- Hint: You can store the results from the two queries in two separate dataframes.

-- Write a function that checks if customer borrowed more or less films in the month of June as compared to May.
-- Hint: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes.
-- Here is a link to the documentation for the merge function.


-- Last two exercices are done in the Jupyter Notebook of the same repo

































