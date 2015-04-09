﻿set search_path = "project";

CREATE TABLE rater
(
  userID INTEGER NOT NULL,
  email VARCHAR(20),
  name VARCHAR(20),
  join_date DATE,
  type VARCHAR(20),
  reputation INTEGER DEFAULT 1,
  CONSTRAINT rater_pkey PRIMARY KEY (userID),
  CONSTRAINT rater_reputation CHECK (reputation >= 1 AND reputation <= 5)
);

CREATE TABLE rating
(
  userID INTEGER NOT NULL,
  date DATE,
  price INTEGER,
  food INTEGER,
  mood INTEGER,
  staff INTEGER,
  comments VARCHAR(20),
  /* not sure if comments is implemented propery */
  CONSTRAINT rating_userID_fkey FOREIGN KEY (userID)
	REFERENCES rater(userID)
	ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT rating_pkey PRIMARY KEY (userID, date),
  CONSTRAINT rating_price CHECK (price >= 1 AND price <= 5),
  CONSTRAINT rating_food CHECK (food >= 1 AND food <= 5),
  CONSTRAINT rating_mood CHECK (mood >= 1 AND mood <= 5),
  CONSTRAINT rating_staff CHECK (staff >= 1 AND staff <= 5)
 );

 CREATE TABLE restaurant
 (
   restaurantID INTEGER NOT null,
   name VARCHAR(20),
   type VARCHAR(20),
   URL VARCHAR(512),
   CONSTRAINT restaurant_pkey PRIMARY KEY (restaurantID)
 );

 CREATE TABLE location
 (
   locationID INTEGER not null,
   first-open-date DATE,
   manager-name VARCHAR(20),
   phone-number VARCHAR(15),
   street-address CHAR(15),
   hour-open VARCHAR(4),
   hour-close VARCHAR(4),
   restaurantID INTEGER,
   CONSTRAINT location_restaurantID_fkey FOREIGN KEY (restaurantID)
	REFERENCES restaurant(restaurantID)
	ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT location_pkey PRIMARY KEY (locationID)
 );

 CREATE TABLE menuItem
 (
   itemID INTEGER not null,
   name VARCHAR(20),
   type VARCHAR(8),
   category VARCHAR(6),
   description VARCHAR(20),
   price DECIMAL,
   restaurantID INTEGER,
   CONSTRAINT menuItem_category CHECK (category IN ('starter', 'main', 'desert')),
   CONSTRAINT menuItem_type CHECK (type IN ('food', 'beverage')),
   CONSTRAINT menuItem_pkey PRIMARY KEY (menuItem),
   CONSTRAINT menuItem_restaurantID_fkey FOREIGN KEY (restaurantID)
	REFERENCES restaurant(restaurantID)
	ON UPDATE CASCADE ON DELETE CASCADE
 );

CREATE TABLE ratingItem
(
  userID INTEGER,
  Date DATE,
  itemID INTEGER
  rating INTEGER, 
  comment VARCHAR(20),
  CONSTRAINT ratingItem PRIMARY KEY (userID, date, itemID),
  CONSTRAINT ratingItem_userID_fkey FOREIGN KEY (userID)
	REFERENCES rater(userID)
	ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT ratingItem_itemID_fkey FOREIGN KEY (itemID)
	REFERENCES menuItem(itemID)
	ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT ratingItem_rating CHECK (rating >= 1 AND rating <= 5)
)