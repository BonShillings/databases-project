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
