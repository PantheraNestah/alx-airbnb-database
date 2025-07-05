# Unleashing Advanced Querying Power
## SQL Joins `joins_queries.sql`
- INNER JOIN
    <br/>To retrieve all bookings and the respective users who made those bookings
- LEFT JOIN
    <br/>To retrieve all properties and their reviews, including properties that have no reviews
- FULL OUTER JOIN
    <br/>To retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.

## Subqueries `subqueries.sql`
- A query to find all properties where the average rating is greater than 4.0 using a subquery.
- A correlated subquery to find users who have made more than 3 bookings.

## Aggregations and Window Functions `aggregations_and_window_functions.sql`
- A query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
- Using a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.

## Implementing Indexes for Optimization `database_index.sql`
- Creating Index on high usage columns in User, Booking and Property tables

## Optimizing Complex Queries `perfomance.sql`
- An initial basic query that retrieves all bookings along with the user details, property details, and payment details.
- Analyzing the query’s performance using EXPLAIN and identifying any inefficiencies.
- Refactoring the query to reduce execution time, such as reducing unnecessary joins or using indexing.