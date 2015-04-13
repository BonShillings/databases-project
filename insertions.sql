set search_path = "test";

--restaurant insertions
INSERT INTO restaurant VALUES (1, 'North and Navy', 'Italian', 'http://northandnavy.com/');
INSERT INTO restaurant VALUES (2, 'Fauna', 'Canadian', 'http://www.faunaottawa.ca/');
INSERT INTO restaurant VALUES (3, 'Clover Food', 'Canadian', 'http://cloverottawa.ca/');
INSERT INTO restaurant VALUES (4, 'The Soca Kitchen and Pub', 'Spanish', 'http://www.socapub.com/');
INSERT INTO restaurant VALUES (5, 'El Camino', 'Mexican', 'http://www.eatelcamino.com/');
INSERT INTO restaurant VALUES (6, 'The Smoque Shack', 'American', 'http://www.smoqueshack.com/');
INSERT INTO restaurant VALUES (7, 'Cacao70', 'Desert', 'http://cacao70.ca/');
INSERT INTO restaurant VALUES (8, 'MLT DWN', 'Canadian', 'http://www.mltdwn.com/');
INSERT INTO restaurant VALUES (9, 'Big Smoke Burger', 'American', 'http://www.bigsmokeburger.com/');
INSERT INTO restaurant VALUES (10, 'The Albion Rooms', 'Canadian', 'http://www.thealbionrooms.com/');
INSERT INTO restaurant VALUES (11, 'SuzyQ', 'Desert', 'http://suzyq.ca/');
INSERT INTO restaurant VALUES (12, 'Union Local 613', 'Southern', 'http://union613.ca/');

--rater insertions
INSERT INTO rater VALUES (1, 'julz_ribi@email.com', 'julz_ribi', '2014-04-08', 'blog', '5');
INSERT INTO rater VALUES (2, 'mellime119@email.com', 'mellimel19', '2014-06-12', 'online', '2');
INSERT INTO rater VALUES (3, 'montreal_food_pics@email.com', 'Montreal Food Pics', '2014-05-10', 'blog', '5');
INSERT INTO rater VALUES (4, 'domestic_blonde@email.com', 'Domestic Blonde', '2013-08-04', 'blog', '4');
INSERT INTO rater VALUES (5, 'heather_tk@email.com', 'Heather_tk', '2014-09-06', 'online', '1');
INSERT INTO rater VALUES (6, 'niatrou@email.com', 'niatrou', '2015-03-26', 'critic', '5');
INSERT INTO rater VALUES (7, 'food_baby@email.com', 'food_baby', '2014-01-17', 'critic', '3');
INSERT INTO rater VALUES (8, 'emtowsley@email.com', 'emtowsley', '2014-06-25', 'online', '1');
INSERT INTO rater VALUES (9, 'dsilverburgh@email.com', 'dsilverburgh', '2015-02-24', 'critic', '4');
INSERT INTO rater VALUES (10, 'jerjonesdoll@email.com', 'jerjonesdoll', '2015-04-05', 'online', '2');
INSERT INTO rater VALUES (11, 'jbowes@email.com', 'jbowes', '2015-04-02', 'blog', '3');
INSERT INTO rater VALUES (12, 'desire2inspire@email.com', 'desire2inspire', '2014-03-15', 'blog', '3');
INSERT INTO rater VALUES (13, 'dparmar4@email.com', 'dparmar4', '2015-01-19', 'online', '5');
INSERT INTO rater VALUES (14, 'aacha005@email.com', 'aacha005', '2013-10-24', 'online', '2');
INSERT INTO rater VALUES (15, 'Laura_d@email.com', 'Laura_d', '2015-02-13', 'blog', '3');

--menu item insertions
INSERT INTO menuItem VALUES (1, 'Caesar Selections', 'food', 'starter', 'Crisp romaine tossed with our homemade Caesar dressing, croutons, and shredded parmesan cheese.', 4.95, 1);
INSERT INTO menuItem VALUES (2, 'Chicken Salitmbocca', 'food', 'main', 'Boneless breast of chicken sauteed with fresh sage and proscuitto. Finished in the oven with mozzarella and served atop creamy asagio linguini.', 19.95, 1);
INSERT INTO menuItem VALUES (3, 'Macabeo', 'beverage', 'starter', 'A blend of ripe, rounded Chardonnay with crisp, appley Macabeo delivers a delicious tangy finish.', 5.30, 1);
INSERT INTO menuItem VALUES (4, 'Ban-offee Pie', 'food', 'desert', 'Shortbread and pecan crust layered with caramel and bananas topped with whipped cream.', 5.75, 1);
INSERT INTO menuItem VALUES (5, 'Chicken Scampi Roja', 'food', 'main', 'Boneless breast of chicken sauteed in a scampi sauce with sundried tomatoes, artichoke hearts, and spinach. Tossed with linguini and finished with roasted red pepper pesto and the chefs choice of ravioli.', 19.95, 2);
INSERT INTO menuItem VALUES (6, 'Traditional Chicken Scampi', 'food', 'main', 'Boneless breast of chicken sauteed with mushrooms and tons of fresh garlic. Finished with white starter, sweet cream butter, and linguini.', 17.95, 2);
INSERT INTO menuItem VALUES (7, 'Black Bean Soup', 'food', 'starter', 'Pureed black bean, jalapeno and vegetable soup', 5.95, 2);
INSERT INTO menuItem VALUES (8, 'Strawberry-Coconut Pie', 'food', 'desert', 'Coconut cream filling topped with fresh glazed strawberries and vanilla lime sauce.', 6.5, 2);
INSERT INTO menuItem VALUES (9, 'Emeril Chicken', 'food', 'main', 'Boneless breast of chicken sauteed with mushrooms, spinach, artichoke hearts, fire roasted peppers, and sundried tomatoes. Finished with a chipotle-chevre sauce.', 18.95, 3);
INSERT INTO menuItem VALUES (10, 'Broccoli and Cheese Soup', 'food', 'starter', 'A hearty brocoli and cheese soup for those cold winter days.', 5.95, 3);
INSERT INTO menuItem VALUES (11, 'Dark Chocolate and Peanut Butter Stack', 'food', 'desert', 'Food cake with peanut butter mousse served with peanut butter ice cream', 6.5, 3);
INSERT INTO menuItem VALUES (12, 'Chenin Blanc', 'beverage', 'starter', 'A crisp, light nose of green peppers and citrus fruits leads to a palate of tropical notes and a balanced finish of pear and grapefruit', 10.9, 3);
INSERT INTO menuItem VALUES (13, 'Seafood Saute', 'food', 'main', 'Fresh haddock, sea scallops, gulf shrimp, and the chefs choice of ravioli tossed in your choice of sauce.', 22.95, 4);
INSERT INTO menuItem VALUES (14, 'Minestrone Soup', 'food', 'starter', 'Traditional Italian Vegetable Soup that includes; Green Beans, Zucchini, Tomatoes, Carrots, Spinach, Kidney and Cannellini Beans and Pasta', 6.45, 4);
INSERT INTO menuItem VALUES (15, 'Strawberry Layer Cake', 'food', 'desert', 'White chocolate cream cheese frosting served with vanilla ice cream', 7, 4);
INSERT INTO menuItem VALUES (16, 'Shrimp Scampi Roja', 'food', 'main', ' Fresh gulf shrimp sauteed in a scampi sauce with sundried tomatoes, artichoke hearts, and spinach. Tossed with linguini and finished with roasted red pepper pesto and the chefs choice of ravioli.', 19.95, 5);
INSERT INTO menuItem VALUES (17, 'Milk Chocolate Cream Pie', 'food', 'desert', 'Rich milk chocolate pudding on a dark chocolate cookie crust served with vanilla whipped cream.', 6, 5);
INSERT INTO menuItem VALUES (18, 'Sauvignon Blanc', 'beverage', 'starter', 'A starter that perfectly demonstrates that quality starter can be found outside of the more traditional producing areas. Fresh and fruity this is a fantastic easy drinker.', 11.3, 5);
INSERT INTO menuItem VALUES (19, 'Gaganega', 'beverage', 'starter', 'A delicious, mouthwatering blend of two of Italys finest varieties is delicate, citrusy and dry with a tangy finish', 11.7, 6);
INSERT INTO menuItem VALUES (20, 'Split Pea Soup', 'food', 'starter', 'A Hearty Split Pea Soup Simmered with Carrots and Red Potatoes', 4.95, 6);
INSERT INTO menuItem VALUES (21, 'Corn Chowder', 'food', 'starter', 'A Great Cream Soup on a Cold Day with Bacon, Potato and Lots of Corn', 5.95, 7);
INSERT INTO menuItem VALUES (22, 'Baked Stuffed Seafood Selection', 'food', 'main', 'Your choice served on our homemade crabmeat stuffing.', 18.95, 7);
INSERT INTO menuItem VALUES (23, 'Bartlett Pear Crisp', 'food', 'desert', 'With oat, coconut and almond topping, served warm with homemade buttermilk caramel ice cream.', 6.5, 7);
INSERT INTO menuItem VALUES (24, 'Chablis', 'beverage', 'starter', 'Mouth-watering minerality and wonderfully pure appley fruit, this electrifies the palate and has considerable richness for Chablis - a stunner! ', 11.5, 8);
INSERT INTO menuItem VALUES (25, 'Rioja Blanco', 'beverage', 'starter', 'Fresh, zesty and full of minerality. An elegant bouquet of citrus & apple & a palate of great structure & balance make way to a long refreshing finish.', 8.75, 8);
INSERT INTO menuItem VALUES (26, 'Veal Parmigiana', 'food', 'main', 'Sauteed cutlet of Wisconsin milk fed veal, baked with Italian plum tomato sauce and mozzarella cheese', 14.95, 8);
INSERT INTO menuItem VALUES (27, 'Clam Chowder', 'food', 'starter', 'A thick New England favorite!', 6.95, 8);
INSERT INTO menuItem VALUES (28, 'Turkey Soup', 'food', 'starter', 'Turkey and lightly seasoned stock with carrots, onions, celery, corn, peas and zucchini', 5.45, 9);
INSERT INTO menuItem VALUES (29, 'Red Velvet Layer Cake', 'food', 'desert', 'With cream cheese frosting served with vanilla ice cream', 6.5, 9);
INSERT INTO menuItem VALUES (30, 'Creole Pecan Pie', 'food', 'desert', 'With whipped cream', 6.5, 9);
INSERT INTO menuItem VALUES (31, 'Royal Wings', 'food', 'starter', 'Buttermilk battered in our signature seasoning blend. Enjoy a pound of our crispy wings tossed in your favourite sauce: Mild, Medium, Hot, Extreme, Cajun dusted, Sriracha, Thai or Honey Garlic.', 7.45, 9);
INSERT INTO menuItem VALUES (32, 'Soup of the Day', 'food', 'starter', 'Prepared fresh from our kitchen. Bowl or cup.', 7.95, 10);
INSERT INTO menuItem VALUES (33, 'Pita Plate', 'food', 'starter', 'A plate of hummus and Tzatziki served with fresh cut vegetables, Kalamata olives and grilled pita. Individual or sharing.', 8.45, 10);
INSERT INTO menuItem VALUES (34, 'Grilled Vegetable and Goat Cheese Wrap', 'food', 'main', 'A plate of hummus and Tzatziki served with fresh cut vegetables, Kalamata olives and grilled pita. Individual or sharing.', 14.45, 10);
INSERT INTO menuItem VALUES (35, 'Lamb Burger', 'food', 'main', 'A tasty grilled New Zealand lamb, handcrafted burger lightly seasoned with rosemary and garlic, served with caramelized red onions and fresh cucumber Tzatziki.', 13.95, 11);
INSERT INTO menuItem VALUES (36, 'Shepherds Pie', 'food', 'main', 'A traditional English favourite with a twist! Homemade Shepherds Pie topped with your choice of red potato or sweet potato mash and covered in gravy. Served with salad.', 13.95, 11);
INSERT INTO menuItem VALUES (37, 'Flat Iron Steak', 'food', 'main', 'Known for its tenderness, this 8 oz. steak is grilled to perfection and topped with sauteed mushrooms, onions and green peppers. Served with choice of any two: rice or potato or seasonal vegetables.', 17.95, 12);
INSERT INTO menuItem VALUES (38, 'Grey Goose Cape Coddler', 'beverage', 'starter', 'A refreshing classic with vodka and a splash of cranberry', 9.49, 12);
INSERT INTO menuItem VALUES (39, 'Mudslide', 'beverage', 'starter', 'A creamy, frosty blend of Kahlua, Baileys Irish Cream and vodka, served in a glass swirled with chocolate and topped with whipped cream', 8.29, 12);
INSERT INTO menuItem VALUES (40, 'Pumpkin Soup', 'food', 'starter', 'A Creamy and Velvety Soup with Nutmeg and Bacon', 6.95, 12);

--location insertions
INSERT INTO location VALUES (1, '2015-01-01', 'Evariste Galois', '613-232-6289', '226 Neapean Street', '11:00', '02:00', 1);
INSERT INTO location VALUES (2, '2014-01-01', 'Alan Turing', '613-563-2862', '425 Bank Street', '11:30', '02:00', 1);
INSERT INTO location VALUES (3, '2013-12-31', 'Bernhard Riemann', '613-680-8803', '155 Bank Street', '11:00', '02:00',  2);
INSERT INTO location VALUES (4, '2014-11-30', 'Alex Grothendieck', '613-265-4501', '123 Fake Street', '10:00', '12:00', 3);
INSERT INTO location VALUES (5, '2014-04-20', 'Saunders Mac Lane', '613-264-2718', '123 Sesame Street', '11:00', '01:00', 4);
INSERT INTO location VALUES (6, '2014-02-14', 'Terry Tao', '613-400-6087', '42 Evergreen Terraace', '12:00', '23:00', 5);
INSERT INTO location VALUES (7, '2014-11-24', 'John Nash', '613-123-4567', '420 Fake Street', '13:00', '01:00', 6);
INSERT INTO location VALUES (8, '2014-04-01', 'Bertrand Russel', '613-987-6543', '50 Rideau Street', '12:00', '02:00', 7);
INSERT INTO location VALUES (9, '2015-04-13', 'Pierre Fermat', '613-235-7110', '1 Wellington Street', '10:00', '21:00', 8);
INSERT INTO location VALUES (10, '2014-04-20', 'Louis Lagrange', '613-416-4169', '525 King Edward Avenue', '09:00', '00:00', 9);
INSERT INTO location VALUES (11, '2013-05-25', 'Edward Frenkel', '613-649-6479', '120 Elgin Street', '12:00', '00:00', 10);
INSERT INTO location VALUES (12, '2015-02-22', 'Augustin Cauchy', '613-420-0240', '360 Fake Street', '15:00', '3:00', 11);
INSERT INTO location VALUES (13, '2015-03-11', 'Issac Newton', '613-000-0000', '25 Rideau Street', '08:00', '20:00', 12);
INSERT INTO location VALUES (14, '2015-03-15', 'Carl Gauss', '613-111-1111', '420 Blaze Street', '16:20', '04:20', 12);

--rating insertions
INSERT INTO rating VALUES (1, '2015-01-01', 1, 1, 1, 1, '4/20 would not eat again', 1);
INSERT INTO rating VALUES (2, '2015-01-02', 1, 1, 1, 2, '5/20 would not eat again', 1);
INSERT INTO rating VALUES (3, '2015-01-03', 1, 1, 1, 3, '6/20 would not eat again', 1);
INSERT INTO rating VALUES (4, '2015-01-04', 1, 1, 1, 4, '7/20 would not eat again', 1);
INSERT INTO rating VALUES (5, '2015-01-05', 1, 1, 1, 5, '8/20 would not eat again', 1);
INSERT INTO rating VALUES (6, '2015-01-06', 1, 1, 2, 1, '5/20 would not eat again', 1);
INSERT INTO rating VALUES (7, '2015-01-07', 1, 1, 3, 1, '6/20 would not eat again', 1);
INSERT INTO rating VALUES (8, '2015-01-08', 1, 1, 4, 1, '7/20 would not eat again', 1);

INSERT INTO rating VALUES (9, '2015-02-01', 5, 5, 5, 5, '20/20 would eat again', 2);
INSERT INTO rating VALUES (10, '2015-02-02', 4, 5, 5, 5, '19/20 would eat again', 2);
INSERT INTO rating VALUES (11, '2015-02-03', 3, 5, 5, 5, '18/20 would eat again', 2);
INSERT INTO rating VALUES (12, '2015-02-04', 2, 5, 5, 5, '17/20 would eat again', 2);
INSERT INTO rating VALUES (13, '2015-02-05', 1, 5, 5, 5, '16/20 would eat again', 2);
INSERT INTO rating VALUES (14, '2015-02-06', 3, 3, 3, 3, '12/20 would consider eating again', 2);
INSERT INTO rating VALUES (15, '2015-02-07', 2, 3, 3, 3, '11/20 would not eat again', 2);
INSERT INTO rating VALUES (1, '2015-02-08', 1, 3, 3, 3, '10/20 would not eat again', 2);

INSERT INTO rating VALUES (1, '2015-03-01', 1, 1, 1, 1, '4/20 would not eat again', 3);
INSERT INTO rating VALUES (2, '2015-03-02', 2, 2, 2, 2, '8/20 would not eat again', 3);
INSERT INTO rating VALUES (2, '2015-03-03', 3, 3, 3, 3, '12/20 would consider eating again', 3);
INSERT INTO rating VALUES (3, '2015-03-04', 4, 4, 4, 4, '16/20 would eat again', 3);
INSERT INTO rating VALUES (3, '2015-03-05', 5, 5, 5, 5, '20/20 would definitely eat again', 3);
INSERT INTO rating VALUES (4, '2015-03-06', 1, 2, 3, 4, '10/20 would not eat again', 3);
INSERT INTO rating VALUES (4, '2015-03-07', 5, 3, 4, 5, '17/20 would eat again', 3);
INSERT INTO rating VALUES (5, '2015-03-08', 3, 4, 5, 2, '14/20 would consider eating again', 3);

INSERT INTO rating VALUES (5, '2015-01-10', 3, 4, 3, 4, '14/20 would consider eating again', 4);
INSERT INTO rating VALUES (9, '2015-01-11', 3, 2, 3, 3, '11/20 would not eat agian', 4);
INSERT INTO rating VALUES (1, '2015-01-12', 2, 2, 2, 2, '8/20 would not eat again', 4);
INSERT INTO rating VALUES (2, '2015-01-13', 3, 3, 2, 2, '10/20 would not eat again', 4);
INSERT INTO rating VALUES (3, '2015-01-14', 5, 1, 5, 1, '12/20 would consider eating again', 4);
INSERT INTO rating VALUES (4, '2015-01-15', 4, 3, 2, 1, '10/20 would not eat again', 4);
INSERT INTO rating VALUES (5, '2015-01-16', 3, 3, 3, 3, '12/20 would consider eating again', 4);
INSERT INTO rating VALUES (6, '2015-01-17', 2, 3, 2, 3, '10/20 would not eat again', 4);

INSERT INTO rating VALUES (7, '2015-01-18', 1, 1, 1, 1, '4/20 would not eat again', 5);
INSERT INTO rating VALUES (8, '2015-02-10', 1, 2, 3, 4, '10/20 would not eat again', 5);
INSERT INTO rating VALUES (9, '2015-02-11', 5, 5, 5, 5, '20/20 would eat again', 5);
INSERT INTO rating VALUES (10, '2015-02-12', 4, 4, 4, 4, '16/20 would eat agian', 5);
INSERT INTO rating VALUES (11, '2015-02-13', 3, 3, 3, 3, '12/10 would consider again', 5);
INSERT INTO rating VALUES (12, '2015-02-14', 5, 4, 5, 4, '18/20 would eat again', 5);
INSERT INTO rating VALUES (13, '2015-02-15', 5, 4, 4, 4, '17/20 would eat again', 5);
INSERT INTO rating VALUES (14, '2015-02-16', 3, 5, 3, 4, '15/20 would consider eating again', 5);

INSERT INTO rating VALUES (15, '2015-03-11', 3, 3, 3, 3, '12/20 would consider eating again', 6);
INSERT INTO rating VALUES (1, '2015-03-12', 4, 3, 3, 3, '13/20 would consider eating again', 6);
INSERT INTO rating VALUES (2, '2015-03-13', 5, 3, 3, 3, '14/20 would consider eating again', 6);
INSERT INTO rating VALUES (3, '2015-03-14', 5, 4, 3, 3, '15/20 would consider eating again', 6);
INSERT INTO rating VALUES (4, '2015-03-15', 5, 5, 3, 3, '16/20 would eat again', 6);
INSERT INTO rating VALUES (5, '2015-03-16', 3, 3, 3, 4, '13/20 would consider eating again', 6);
INSERT INTO rating VALUES (6, '2015-03-17', 3, 3, 2, 5, '13/20 would consider eating again', 6);
INSERT INTO rating VALUES (7, '2015-03-18', 5, 2, 5, 3, '15/20 would consider eating again', 6);

INSERT INTO rating VALUES (8, '2014-05-01', 5, 5, 5, 5, '20/20 would eat again', 7);
INSERT INTO rating VALUES (9, '2014-05-02', 5, 5, 5, 5, '20/20 would eat again', 7);
INSERT INTO rating VALUES (10, '2014-05-04', 5, 4, 4, 5, '18/20 would eat again', 7);
INSERT INTO rating VALUES (11, '2015-05-05', 5, 4, 5, 5, '19/20 would eat again', 7);
INSERT INTO rating VALUES (8, '2015-04-01', 3, 3, 3, 3, '12/20 would consider eating again', 7);
INSERT INTO rating VALUES (9, '2015-04-02', 3, 3, 3, 3, '12/20 would consider eating again', 7);
INSERT INTO rating VALUES (10, '2015-04-03', 2, 3, 2, 4, '11/20 would consider eating again',  7);
INSERT INTO rating VALUES (11, '2015-04-04', 3, 3, 2, 2, '12/20 would consider eating again', 7);

INSERT INTO rating VALUES (7, '2015-04-17', 2, 4, 4, 2, '12/20 would consider eating again', 8);
INSERT INTO rating VALUES (8, '2015-04-17', 3, 2, 3, 2, '12 2O would consider eating again', 8);
INSERT INTO rating VALUES (6, '2015-04-18', 3, 2, 4, 1, '10/20 would not eat again', 8);
INSERT INTO rating VALUES (1, '2015-04-13', 4, 4, 4, 4, '16/20 would eat again', 8);
INSERT INTO rating VALUES (2, '2015-04-13', 4, 3, 4, 3, '14/20 would consider eating again', 8);
INSERT INTO rating VALUES (3, '2015-04-14', 3, 3, 3, 3, '12/20 would consider eating again', 8);
INSERT INTO rating VALUES (15, '2015-04-15', 3, 2, 3, 4, '12/20 would consider eating again', 8);
INSERT INTO rating VALUES (13, '2015-04-16', 1, 1, 1, 1, '4/20 would not eat again', 8);

INSERT INTO rating VALUES (15, '2014-05-01', 5, 1, 1, 1, '8/20 would not eat again', 9);
INSERT INTO rating VALUES (14, '2014-05-02', 1, 5, 1, 2, '9/20 would not eat again', 9);
INSERT INTO rating VALUES (13, '2014-05-03', 1, 1, 5, 3, '10/20 would not eat again', 9);
INSERT INTO rating VALUES (12, '2014-05-04', 1, 1, 1, 4, '7/20 would not eat again', 9);
INSERT INTO rating VALUES (12, '2014-05-05', 1, 1, 4, 5, '11/20 would not eat again', 9);
INSERT INTO rating VALUES (13, '2014-05-06', 1, 4, 2, 1, '8/20 would not eat again', 9);
INSERT INTO rating VALUES (14, '2014-05-07', 1, 1, 3, 1, '6/20 would not eat again', 9);
INSERT INTO rating VALUES (15, '2014-05-08', 4, 1, 4, 1, '10/20 would not eat again', 9);

INSERT INTO rating VALUES (5, '2014-05-01', 5, 5, 5, 5, '20/20 would eat again', 10);
INSERT INTO rating VALUES (6, '2014-05-02', 5, 5, 5, 5, '20/20 would eat again', 10);
INSERT INTO rating VALUES (15, '2014-05-04', 5, 4, 4, 5, '18/20 would eat again', 10);
INSERT INTO rating VALUES (10, '2015-05-05', 5, 4, 5, 5, '19/20 would eat again', 10);
INSERT INTO rating VALUES (15, '2015-04-01', 3, 3, 3, 3, '12/20 would consider eating again', 10);
INSERT INTO rating VALUES (5, '2015-04-02', 3, 3, 3, 3, '12/20 would consider eating again', 10);
INSERT INTO rating VALUES (6, '2015-04-03', 2, 3, 2, 4, '11/20 would consider eating again', 10);
INSERT INTO rating VALUES (6, '2015-04-04', 3, 3, 2, 2, '12/20 would consider eating again', 10);

INSERT INTO rating VALUES (1, '2015-02-22', 1, 4, 4, 4, '13/20 would consider eating again', 11);
INSERT INTO rating VALUES (2, '2015-02-13', 4, 1, 4, 3, '12/20 would consider eating again', 11);
INSERT INTO rating VALUES (3, '2015-02-14', 3, 3, 1, 3, '12/20 would consider eating again', 11);
INSERT INTO rating VALUES (4, '2015-02-15', 3, 2, 3, 1, '9/20 would not eat again', 11);
INSERT INTO rating VALUES (4, '2015-04-20', 4, 4, 1, 4, '13/20 would consider eating again', 11);
INSERT INTO rating VALUES (5, '2015-04-21', 3, 1, 3, 4, '10/20 would not again', 11);
INSERT INTO rating VALUES (15, '2015-04-15', 3, 2, 5, 4, '14/20 would consider eating again', 11);
INSERT INTO rating VALUES (13, '2015-04-16', 1, 1, 1, 1, '4/20 would not eat again', 11);

INSERT INTO rating VALUES (7, '2015-03-20', 3, 3, 3, 3, '12/20 would consider earting again', 12);
INSERT INTO rating VALUES (8, '2015-03-20', 3, 3, 3, 3, '12/20 would consider eating again', 12);
INSERT INTO rating VALUES (9, '2015-03-20', 3, 3, 3, 3, '12/20 would consider eating again', 12);
INSERT INTO rating VALUES (10, '2015-03-20', 3, 3, 3, 3, '12/20 would consider eating again', 12);
INSERT INTO rating VALUES (7, '2015-03-30', 1, 1, 1, 1, '4/20 would not eat again', 12);
INSERT INTO rating VALUES (8, '2015-03-30', 1, 1, 1, 1, '4/20 would not eat again', 12);
INSERT INTO rating VALUES (9, '2015-03-30', 1, 1, 1, 1, '4/20 would not eat again', 12);
INSERT INTO rating VALUES (10, '2015-03-30', 1, 1, 1, 1, '4/20 would not eat again', 12);
INSERT INTO rating VALUES (6, '2015-03-30', 2, 1, 1, 1, '5/20 would not eat again', 12);

INSERT INTO ratingItems VALUES (1, 6, '2014-05-02', 32, 5);
INSERT INTO ratingItems VALUES (2, 6, '2015-04-03', 33, 3);
INSERT INTO ratingItems VALUES (3, 6, '2015-04-04', 34, 3);
