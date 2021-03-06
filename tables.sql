set search_path = "test";

CREATE TABLE rater
(
  userID INTEGER NOT NULL,
  email VARCHAR(30),
  name VARCHAR(20),
  join_date DATE NOT NULL,
  type VARCHAR(20),
  reputation INTEGER DEFAULT 1,
  CONSTRAINT rater_pkey PRIMARY KEY (userID),
  CONSTRAINT rater_reputation CHECK (reputation >= 1 AND reputation <= 5),
  CONSTRAINT rater_type CHECK (type IN ('blog', 'online', 'critic'))
);

CREATE TABLE restaurant
 (
   restaurantID INTEGER NOT NULL,
   name VARCHAR(50) NOT NULL,
   type VARCHAR(30) NOT NULL,
   URL VARCHAR(512),
   CONSTRAINT restaurant_pkey PRIMARY KEY (restaurantID)
 );

CREATE TABLE rating
(
  userID INTEGER NOT NULL,
  date DATE,
  price INTEGER,
  food INTEGER,
  mood INTEGER,
  staff INTEGER,
  comments TEXT,
  restaurantID INTEGER NOT NULL,
  CONSTRAINT rating_userID_fkey FOREIGN KEY (userID)
	REFERENCES rater(userID)
	ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT rating_restaurantID_fkey FOREIGN KEY (restaurantID)
	REFERENCES restaurant(restaurantID)
	ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT rating_pkey PRIMARY KEY (userID, date, restaurantID),
  CONSTRAINT rating_price CHECK (price >= 1 AND price <= 5),
  CONSTRAINT rating_food CHECK (food >= 1 AND food <= 5),
  CONSTRAINT rating_mood CHECK (mood >= 1 AND mood <= 5),
  CONSTRAINT rating_staff CHECK (staff >= 1 AND staff <= 5)
 );

 CREATE TABLE location
 (
   locationID INTEGER NOT NULL,
   first_open_date DATE NOT NULL,
   manager_name VARCHAR(20) NOT NULL,
   phone_number VARCHAR(15) NOT NULL,
   street_address CHAR(95) NOT NULL,
   hour_open VARCHAR(5) NOT NULL,
   hour_close VARCHAR(5) NOT NULL,
   restaurantID INTEGER NOT NULL,
   CONSTRAINT location_restaurantID_fkey FOREIGN KEY (restaurantID)
	REFERENCES restaurant(restaurantID)
	ON UPDATE CASCADE ON DELETE CASCADE,
   CONSTRAINT location_pkey PRIMARY KEY (locationID)
 );

 CREATE TABLE menuItem
 (
   itemID INTEGER NOT NULL,
   name VARCHAR(50) NOT NULL,
   type VARCHAR(8) NOT NULL,
   category VARCHAR(7),
   description TEXT,
   price DECIMAL,
   restaurantID INTEGER NOT NULL,
   CONSTRAINT menuItem_category CHECK (category IN ('starter', 'main', 'desert')),
   CONSTRAINT menuItem_type CHECK (type IN ('food', 'beverage')),
   CONSTRAINT menuItem_pkey PRIMARY KEY (itemID),
   CONSTRAINT menuItem_restaurantID_fkey FOREIGN KEY (restaurantID)
	REFERENCES restaurant(restaurantID)
	ON UPDATE CASCADE ON DELETE CASCADE
 );
 
CREATE TABLE ratingItem
(
  userID INTEGER NOT NULL,
  date DATE NOT NULL,
  itemID INTEGER NOT NULL,
  rating INTEGER NOT NULL, 
  comment TEXT,
  CONSTRAINT ratingItem_pkey PRIMARY KEY (userID, date, itemID),
  CONSTRAINT ratingItem_userID_fkey FOREIGN KEY (userID)
	REFERENCES rater(userID)
	ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT ratingItem_itemID_fkey FOREIGN KEY (itemID)
	REFERENCES menuItem(itemID)
	ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT ratingItem_rating CHECK (rating >= 1 AND rating <= 5)
);
