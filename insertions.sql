set search_path = "project";

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


--menuItem insertions
--what are beverages counted as?
--havent tested adding
INSERT INTO menuItem VALUES (1, 'Caesar Selections', 'food', 'starter', 'Crisp romaine tossed with our homemade Caesar dressing, croutons, and shredded parmesan cheese.', 4.95, 1);
INSERT INTO menuItem VALUES (2, 'Chicken Salitmbocca', 'food', 'main', 'Boneless breast of chicken sautéed with fresh sage and proscuitto. Finished in the oven with mozzarella and served atop creamy asagio linguini.', 19.95, 1);
INSERT INTO menuItem VALUES (3, 'Macabeo', 'beverage', 'wine', 'A blend of ripe, rounded Chardonnay with crisp, appley Macabeo delivers a delicious tangy finish.' 5.30, 1);
INSERT INTO menuItem VALUES (4, 'Ban-offee Pie', 'food', 'desert', 'Shortbread and pecan crust layered with caramel and bananas topped with whipped cream.', 5.75, 1);
INSERT INTO menuItem VALUES (5, 'Chicken Scampi Roja', 'food', 'main', 'Boneless breast of chicken sautéed in a scampi sauce with sundried tomatoes, artichoke hearts, and spinach. Tossed with linguini and finished with roasted red pepper pesto and the chef’s choice of ravioli.', 19.95, 2);
INSERT INTO menuItem VALUES (6, 'Traditional Chicken Scampi', 'food', 'main', 'Boneless breast of chicken sautéed with mushrooms and tons of fresh garlic. Finished with white wine, sweet cream butter, and linguini.', 17.95, 2);
INSERT INTO menuItem VALUES (7, 'Black Bean Soup', 'food', 'starter' 'Pureed black bean, jalapeno and vegetable soup', 5.95, 2);
INSERT INTO menuItem VALUES (8, 'Strawberry-Coconut Pie' 'food', 'desert', 'Coconut cream filling topped with fresh glazed strawberries and vanilla lime sauce.' 6.5, 2);
INSERT INTO menuItem VALUES (9, 'Emeril Chicken', 'food', 'main', 'Boneless breast of chicken sautéed with mushrooms, spinach, artichoke hearts, fire roasted peppers, and sundried tomatoes. Finished with a chipotle-chevre sauce.', 18.95, 3);
INSERT INTO menuItem VALUES (10, 'Broccoli and Cheese Soup', 'food', 'starter', 'A hearty brocoli and cheese soup for those cold winter days.', 5.95, 3);
INSERT INTO menuItem VALUES (11, 'Dark Chocolate and Peanut Butter Stack', 'food', 'desert', 'Food cake with peanut butter mousse served with peanut butter ice cream', 6.5, 3);
INSERT INTO menuItem VALUES (12, 'Chenin Blanc', 'beverage', 'wine', 'A crisp, light nose of green peppers and citrus fruits leads to a palate of tropical notes and a balanced finish of pear and grapefruit', 10.9, 3);
INSERT INTO menuItem VALUES (13, 'Seafood Saute', 'food', 'main', 'Fresh haddock, sea scallops, gulf shrimp, and the chef’s choice of ravioli tossed in your choice of sauce.', 22.95, 4);
INSERT INTO menuItem VALUES (14, 'Minestrone Soup', 'food', 'starter', 'Traditional Italian Vegetable Soup that includes; Green Beans, Zucchini, Tomatoes, Carrots, Spinach, Kidney and Cannellini Beans and Pasta', 6.45, 4);
INSERT INTO menuItem VALUES (15, 'Strawberry Layer Cake', 'food', 'desert', 'White chocolate cream cheese frosting served with vanilla ice cream', 7, 4);