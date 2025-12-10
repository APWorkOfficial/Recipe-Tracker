USE recipe_tracker;

-- List all recipes with user and rating
SELECT r.recipe_id,
       r.name,
       u.username,
       r.category,
       r.rating
FROM Recipes r
JOIN Users u ON r.user_id = u.user_id;

-- Show ingredients for a recipe (by id)
SELECT r.name        AS recipe_name,
       i.name        AS ingredient,
       i.quantity,
       i.unit
FROM Recipes r
JOIN Ingredients i
  ON r.recipe_id = i.recipe_id
-- Changeable 1 is Shawarma, 2 Is Birria.
WHERE r.recipe_id = 3; 

-- Show preparation steps for a recipe (by id)
SELECT r.name       AS recipe_name,
       s.step_number,
       s.instruction
FROM Recipes r
JOIN Steps s
  ON r.recipe_id = s.recipe_id
-- Changeable 1 is Shawarma, 2 Is Birria.
WHERE r.recipe_id = 2
ORDER BY s.step_number;

-- Average rating by category
SELECT category,
       AVG(rating) AS avg_rating
FROM Recipes
GROUP BY category;

--------------------------------------------------
-- VIEWS
--------------------------------------------------

-- View recipe and ingredient count
DROP VIEW IF EXISTS v_recipe_ingredient_count;
CREATE VIEW v_recipe_ingredient_count AS
SELECT r.recipe_id,
       r.name,
       COUNT(i.ingredient_id) AS ingredient_count
FROM Recipes r
LEFT JOIN Ingredients i ON r.recipe_id = i.recipe_id
GROUP BY r.recipe_id, r.name;

-- Test 1
SELECT * FROM v_recipe_ingredient_count;

-- View of recipe overview with total time
DROP VIEW IF EXISTS v_recipe_overview;
CREATE VIEW v_recipe_overview AS
SELECT r.recipe_id,
       r.name,
       u.username,
       r.category,
       r.prep_time_min + r.cook_time_min AS total_time_min
FROM Recipes r
JOIN Users u ON r.user_id = u.user_id;

-- Test 2
SELECT * FROM v_recipe_overview;