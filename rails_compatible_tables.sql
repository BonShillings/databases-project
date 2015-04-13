-- alterations made to maintain rails coherence

CREATE TABLE restaurants
(
id serial NOT NULL,
name character varying,
rtype character varying,
url character varying,
created_at timestamp without time zone NOT NULL,
updated_at timestamp without time zone NOT NULL,
CONSTRAINT restaurants_pkey PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);
ALTER TABLE restaurants
OWNER TO ratingswebsite;


CREATE TABLE raters
(
id serial NOT NULL,
email character varying,
name character varying,
join_date date,
rtype character varying,
reputation integer,
created_at timestamp without time zone NOT NULL,
updated_at timestamp without time zone NOT NULL,
CONSTRAINT raters_pkey PRIMARY KEY (id),
CONSTRAINT rater_reputation CHECK (reputation >= 1 AND reputation <= 5),
CONSTRAINT rater_type CHECK (rtype::text = ANY (ARRAY['blog'::character varying, 'online'::character varying, 'critic'::character varying]::text[]))
)
WITH (
OIDS=FALSE
);
ALTER TABLE raters
OWNER TO ratingswebsite;



CREATE TABLE ratings
(
id serial NOT NULL,
rater_id integer,
date date,
price integer,
food integer,
mood integer,
staff integer,
comments text,
restaurant_id integer,
created_at timestamp without time zone NOT NULL,
updated_at timestamp without time zone NOT NULL,
CONSTRAINT ratings_pkey PRIMARY KEY (id),
CONSTRAINT rating_restaurantid_fkey FOREIGN KEY (restaurant_id)
REFERENCES restaurants (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT rating_userid_fkey FOREIGN KEY (rater_id)
REFERENCES raters (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT rating_food CHECK (food >= 1 AND food <= 5),
CONSTRAINT rating_mood CHECK (mood >= 1 AND mood <= 5),
CONSTRAINT rating_price CHECK (price >= 1 AND price <= 5),
CONSTRAINT rating_staff CHECK (staff >= 1 AND staff <= 5)
)
WITH (
OIDS=FALSE
);
ALTER TABLE ratings
OWNER TO ratingswebsite;


CREATE TABLE rating_items
(
id serial NOT NULL,
rater_id integer,
date date,
menuitem_id integer,
rating_id integer,
comment character varying,
created_at timestamp without time zone NOT NULL,
updated_at timestamp without time zone NOT NULL,
CONSTRAINT rating_items_pkey PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);
ALTER TABLE rating_items
OWNER TO ratingswebsite;


CREATE TABLE locations
(
id serial NOT NULL,
opening_date date,
manager_name character varying,
phone_number character varying,
street_address character varying,
hour_open character varying,
hour_close character varying,
restaurant_id integer,
created_at timestamp without time zone NOT NULL,
updated_at timestamp without time zone NOT NULL,
CONSTRAINT locations_pkey PRIMARY KEY (id),
CONSTRAINT location_restaurantid_fkey FOREIGN KEY (restaurant_id)
REFERENCES restaurants (id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
OIDS=FALSE
);
ALTER TABLE locations
OWNER TO ratingswebsite;



CREATE TABLE menuitems
(
id serial NOT NULL,
name character varying,
mtype character varying,
mcategory character varying,
description text,
price numeric,
restaurant_id integer,
created_at timestamp without time zone NOT NULL,
updated_at timestamp without time zone NOT NULL,
CONSTRAINT menuitems_pkey PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);
ALTER TABLE menuitems
OWNER TO ratingswebsite;
