drop table INGREDIENTS cascade constraints;
drop table Recipes cascade constraints;
drop table Category cascade constraints;
drop table WeeklyMenu cascade constraints;
drop table IngredientsRecipes cascade constraints;
drop table RecipeCategory cascade constraints;

CREATE TABLE CATEGORY
(
    CATEGORY_NAME VARCHAR2(20) PRIMARY KEY NOT NULL
);
CREATE TABLE INGREDIENTS
(
    INGREDIENT_NAME VARCHAR2(20) PRIMARY KEY NOT NULL,
    CALORIES NUMBER(4),
    PROTEIN NUMBER(6,2),
    SUGAR NUMBER(6,2),
    FAT NUMBER(6,2),
    SODIUM NUMBER(6,2),
    FOOD_GROUP VARCHAR2(15),
    QUANTITY NUMBER(6),
    SERVINGSIZE NUMBER(6,2)
);
CREATE TABLE INGREDIENTSRECIPES
(
    RECIPE_NAME VARCHAR2(20) NOT NULL,
    INGREDIENT_NAME VARCHAR2(20) NOT NULL,
    QUANTITYNEEDED NUMBER(6),
    CONSTRAINT SYS_C003941 PRIMARY KEY (RECIPE_NAME, INGREDIENT_NAME)
);
CREATE TABLE RECIPECATEGORY
(
    RECIPE_NAME VARCHAR2(50) NOT NULL,
    CATEGORY_NAME VARCHAR2(20) NOT NULL,
    CONSTRAINT SYS_C003939 PRIMARY KEY (RECIPE_NAME, CATEGORY_NAME)
);
CREATE TABLE RECIPES
(
    RECIPE_NAME VARCHAR2(50) PRIMARY KEY NOT NULL,
    INSTRUCTIONS VARCHAR2(1000) NOT NULL
);
CREATE TABLE WEEKLYMENU
(
    MEAL VARCHAR2(10) NOT NULL,
    WEEKDAY VARCHAR2(10) NOT NULL,
    RECIPE_NAME VARCHAR2(50),
    CONSTRAINT SYS_C003940 PRIMARY KEY (MEAL, WEEKDAY)
);
ALTER TABLE INGREDIENTSRECIPES ADD FOREIGN KEY (RECIPE_NAME) REFERENCES RECIPES (RECIPE_NAME) ON DELETE CASCADE;
ALTER TABLE INGREDIENTSRECIPES ADD FOREIGN KEY (INGREDIENT_NAME) REFERENCES INGREDIENTS (INGREDIENT_NAME) ON DELETE CASCADE;
ALTER TABLE RECIPECATEGORY ADD FOREIGN KEY (RECIPE_NAME) REFERENCES RECIPES (RECIPE_NAME) ON DELETE CASCADE;
ALTER TABLE RECIPECATEGORY ADD FOREIGN KEY (CATEGORY_NAME) REFERENCES CATEGORY (CATEGORY_NAME) ON DELETE CASCADE;
ALTER TABLE WEEKLYMENU ADD FOREIGN KEY (RECIPE_NAME) REFERENCES RECIPES (RECIPE_NAME);

INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Asian');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Breakfast');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Dessert');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Dinner');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('French');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Healthy');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Indian');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Irish');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Italian');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Lunch');
INSERT INTO CATEGORY (CATEGORY_NAME) VALUES ('Simple');

INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('Baked Potato', '1. Get potato
2. Bake potota
3. Eat potato');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('Cookies', '1. Mix sugar, butter, flour, and eggs.
2. Bake.
3. Cool.
4. Consume.');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('Potato Pancakes', 'Chop the potatoes into small pieces using a shredder. Then mix with egg and a touch of milk and fry till golden brown.');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('test', '1.test
2.test');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('test7', 'test');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('test77', 'test');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('cassietest', 'test');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('testtest', 'test');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('testing', 'test');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('Chicken, Bacon, Spinach Spaghetti', '1. In a large pot of salted boiling water, cook spaghetti or angel hair according to package directions until al dente. Drain and reserve 1 cup pasta water.
2. Meanwhile, in a large skillet over medium-high heat, heat oil. Season chicken with salt and pepper and cook until cooked through, 4 minutes per side. Transfer to a cutting board and slice into strips.
3. In a second skillet, cook bacon until crispy. Transfer to a paper towel-lined plate and drain, then chop.
4. Pour off half the bacon fat and to skillet add garlic, tomatoes, and spinach and season with salt and pepper. Add heavy cream, Parmesan, and 1/2 cup pasta water and let simmer, then add spaghetti or angel hair and toss until fully coated.
5. Add chicken and bacon and toss, then garnish with basil and serve.');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('Test3', 'Test');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('Test2', 'Test');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('-empty-', ' ');
INSERT INTO RECIPES (RECIPE_NAME, INSTRUCTIONS) VALUES ('ThomasTest', 'Test');

INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Cabbage', 5, 0.00, 0.00, 0.00, 0.00, 'Vegetables', 6, 2.00);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Tomatoes', 20, 0.00, 0.00, 0.00, 0.00, 'Vegetables', 0, 5.00);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Grapes', 45, 0.00, 0.00, 0.00, 0.00, 'Fruits', 3, 10.00);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Carrot', 20, 0.00, 0.00, 0.00, 0.00, 'Vegetables', 1, null);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Bananas', 100, 3.00, 2.00, 2.00, 0.00, 'Fruit', 1, null);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Avocado', 120, 2.00, 2.00, 14.00, 0.00, 'Vegetables', 6, null);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Potato', 200, 0.00, 0.00, 0.00, 0.00, 'Vegetables', 0, null);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Ranch', 180, 0.00, 40.00, 20.00, 0.00, 'Sugar/Fat', 1, null);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Apple', 10, 0.00, 2.00, 0.00, 0.00, 'Fruits', 1, null);
INSERT INTO INGREDIENTS (INGREDIENT_NAME, CALORIES, PROTEIN, SUGAR, FAT, SODIUM, FOOD_GROUP, QUANTITY, SERVINGSIZE) VALUES ('Kiwi', 35, 0.00, 5.00, 0.00, 0.00, 'Fruits', 1, null);

INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('Baked Potato', 'Potato', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('Potato Pancakes', 'Potato', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('Cookies', 'Bananas', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('Cookies', 'Ranch', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('test', 'Carrot', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('test7', 'Grapes', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('test7', 'Kiwi', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('test77', 'Carrot', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('cassietest', 'Carrot', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('testtest', 'Grapes', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('testing', 'Cabbage', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('Test2', 'Avocado', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('Test2', 'Bananas', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('Test3', 'Avocado', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('Test3', 'Bananas', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('ThomasTest', 'Apple', 1);
INSERT INTO INGREDIENTSRECIPES (RECIPE_NAME, INGREDIENT_NAME, QUANTITYNEEDED) VALUES ('ThomasTest', 'Avocado', 1);

INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Baked Potato', 'Irish');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Baked Potato', 'Simple');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Cookies', 'Dessert');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Cookies', 'Simple');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Potato Pancakes', 'Breakfast');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Test2', 'Asian');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Test2', 'Breakfast');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Test3', 'Asian');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('Test3', 'Breakfast');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('ThomasTest', 'Asian');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('ThomasTest', 'Breakfast');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('cassietest', 'Dessert');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('test', 'Dessert');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('test7', 'French');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('test77', 'Healthy');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('testing', 'Dessert');
INSERT INTO RECIPECATEGORY (RECIPE_NAME, CATEGORY_NAME) VALUES ('testtest', 'French');

INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Breakfast', 'Monday', 'Baked Potato');
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Lunch', 'Monday', 'Cookies');
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Dinner', 'Monday', 'Potato Pancakes');
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Breakfast', 'Tuesday', 'ThomasTest');
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Lunch', 'Tuesday', 'testtest');
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Dinner', 'Tuesday', 'Baked Potato');
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Breakfast', 'Wednesday', 'Cookies');
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Lunch', 'Wednesday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Dinner', 'Wednesday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Breakfast', 'Thursday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Lunch', 'Thursday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Dinner', 'Thursday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Breakfast', 'Friday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Lunch', 'Friday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Dinner', 'Friday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Breakfast', 'Saturday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Lunch', 'Saturday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Dinner', 'Saturday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Breakfast', 'Sunday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Lunch', 'Sunday', null);
INSERT INTO WEEKLYMENU (MEAL, WEEKDAY, RECIPE_NAME) VALUES ('Dinner', 'Sunday', null);

CREATE OR REPLACE VIEW recipesForWM AS
select recipe_name from weeklymenu where recipe_name is not null;

CREATE OR REPLACE VIEW ingredientsForWM AS
select IngredientsRecipes.ingredient_name, sum(IngredientsRecipes.quantityneeded) AS quantityneeded
FROM ingredientsrecipes, recipesforwm
WHERE ingredientsrecipes.RECIPE_NAME = recipesforwm.recipe_name 
group by ingredientsrecipes.ingredient_name;

CREATE OR REPLACE VIEW shoppinglist AS
select ingredients.INGREDIENT_NAME, (ingredientsforwm.quantityneeded - ingredients.quantity) AS quantity
FROM ingredients, ingredientsforwm
WHERE ingredients.ingredient_name = ingredientsforwm.INGREDIENT_NAME
AND ingredientsforwm.quantityneeded - ingredients.quantity > 0;