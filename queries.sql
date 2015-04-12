set search_path = "test";

--a
--replace 'El Camino' with restaurant selected
SELECT R.type, R.url, L.first_open_date, L.manager_name, L.phone_number, L.street_address, L.hour_open, L.hour_close
FROM restaurant R, location L
WHERE R.name = 'El Camino' AND R.restaurantID= L.restaurantID;

--b
--replace 'El Camino' with restaurant selected
SELECT M.name, M.price
FROM menuItem M, restaurant R
WHERE R.name = 'El Camino' AND M.restaurantID = R.restaurantID;

--c
--replace 'Canadian' with type of restaurant selected
SELECT L.manager_name, L.first_open_date
FROM location L, restaurant R
WHERE R.type = 'Canadian' AND L.restaurantID = R.restaurantID;

--d
--replace 'North and Navy' with the name of the restaurant selected
SELECT M.name, M.price, M.category, M.type, M.description, L.manager_name, L.hour_open, R.url
FROM menuItem M, location L, restaurant R
WHERE R.name = 'North and Navy' AND L.restaurantID = R.restaurantID AND M.restaurantID = R.restaurantID AND M.price = 
  (
  SELECT max(M1.price) 
  FROM menuItem M1
  WHERE M1.restaurantID = M.restaurantID
  );

--e
--perhaps there is a more efficient way to do this
--replace 'Canadian' with type of food selected
SELECT AVG(M.price), M.category
FROM menuItem M, restaurant R
WHERE M.category = 'starter' AND R.restaurantID = M.restaurantID AND R.type = 'Canadian'
GROUP BY M.category
UNION 
SELECT AVG(M1.price), M1.category
FROM menuItem M1, restaurant R1
WHERE M1.category = 'main' AND R1.restaurantID = M1.restaurantID AND R1.type = 'Canadian'
GROUP BY M1.category
UNION 
SELECT AVG(M2.price), M2.category
FROM menuItem M2, restaurant R2
WHERE M2.category = 'desert' AND R2.restaurantID = M2.restaurantID AND R2.type = 'Canadian'
GROUP BY M2.category;

--g
SELECT DISTINCT R.name, R.type, L.phone_number
FROM restaurant R, location L, rating R1
WHERE L.restaurantID = R.restaurantID AND R1.restaurantID = R.restaurantID AND R.restaurantID NOT IN
  (
  SELECT R.restaurantID
  FROM restaurant R, rating R1
  WHERE (R1.date < '2015-02-01' AND R1.date > '2014-12-31') AND R1.restaurantID = R.restaurantID
  );

--h
--terribly inefficient, works for now but should find more efficient implementation
SELECT DISTINCT R.name, L.first_open_date
FROM restaurant R, location L, rating R1, rater R2
WHERE R.restaurantID = L.restaurantID AND R1.restaurantID = R.restaurantID AND R1.staff < 
(
SELECT MIN(R.staff)
FROM rating R, rater R1
WHERE R.userID = R1.userID AND R1.userID = 11
)
AND R1.staff <
(
SELECT MIN(R.mood)
FROM rating R, rater R1
WHERE R.userID = R1.userID AND R1.userID = 11)
AND R1.staff <
(
SELECT MIN(R.food)
FROM rating R, rater R1
WHERE R.userID = R1.userID AND R1.userID = 11)
AND R1.staff <
(
SELECT MIN(R.price)
FROM rating R, rater R1
WHERE R.userID = R1.userID AND R1.userID = 11
)
ORDER BY L.first_open_date;

--i
--replace 'Canadian' with type of restaurant selected
SELECT DISTINCT R2.name, R.name
FROM rater R, rating R1, restaurant R2
WHERE R2.type = 'Canadian' AND R1.restaurantID = R2.restaurantID AND R1.userID = R.userID AND
R1.food = (
SELECT MAX(R1.food)
FROM rater R, rating R1, restaurant R2
WHERE R2.type = 'Canadian' AND R1.restaurantID = R2.restaurantID AND R1.userID = R.userID
)
ORDER BY R2.name;

--j
--assuming more popular means the best overall rating
SELECT (AVG(R1.food) + AVG(R1.price) + AVG(R1.mood) + AVG(R1.staff)) / 4 AS average_rating, R2.type
FROM rater R, rating R1, restaurant R2
WHERE R1.restaurantID = R2.restaurantID AND R1.userID = R.userID
GROUP BY R2.type
ORDER BY average_rating;

--k
SELECT DISTINCT R.name, R.reputation, R.join_date, R2.name, R1.date
FROM rater R, rating R1, restaurant R2
WHERE R.userID = R1.userID AND R1.restaurantID = R2.restaurantID AND (R1.food + R1.mood) / 2 >=
(
SELECT (MAX(R1.food) + MAX(R1.mood)) / 2
FROM rater R, rating R1, restaurant R2
WHERE R1.restaurantID = R2.restaurantID AND R1.userID = R.userID
);

--l
SELECT DISTINCT R.name, R.reputation, R2.name, R1.date
FROM rater R, rating R1, restaurant R2
WHERE R.userID = R1.userID AND R1.restaurantID = R2.restaurantID AND (R1.food + R1.mood) / 2 >=
(
SELECT (MAX(R1.food) + MAX(R1.mood)) / 2
FROM rater R, rating R1, restaurant R2
WHERE R1.restaurantID = R2.restaurantID AND R1.userID = R.userID
);

--m
--replace 'The Albion Rooms' with the restaurant selected
SELECT DISTINCT R.userID, R.reputation, R1.comments
FROM rater R, rating R1, restaurant R2
WHERE R1.userID = R.userID AND R2.name = 'The Albion Rooms' AND R1.restaurantID = R2.restaurantID AND R.userID IN 
(
--this selects the rater with the most ratings for the restaurant 'The Albion Room'
SELECT R1.userID
FROM rater R, rating R1, restaurant R2
WHERE R2.name = 'The Albion Rooms' AND R1.restaurantID = R2.restaurantID AND R1.userID = R.userID
GROUP BY R1.userID, R.reputation, R2.name
HAVING COUNT(*) >= ALL
	(
	SELECT COUNT(*)
	FROM rating R1, restaurant R
	WHERE R.name = 'The Albion Rooms' AND R1.restaurantID = R.restaurantID
	GROUP BY R1.userID
	)
);
