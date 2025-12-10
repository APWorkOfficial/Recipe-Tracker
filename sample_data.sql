-- Use database
USE recipe_tracker;

--------------------------------------------------
-- SAMPLE DATA
--------------------------------------------------

-- Sample USERS
INSERT INTO Users (username) VALUES
  ('Adam'),
  ('Angel');

-- Sample RECIPES
INSERT INTO Recipes (user_id, name, description, category,
                     prep_time_min, cook_time_min, servings,
                     rating, is_favorite, notes)
VALUES
  (1, 'Spicy Shawarma', 'Spicy chicken in pita with garlic sauce',
      'Dinner', 20, 25, 4, 5, TRUE, 'Spicy'),
  (2, 'Birria Tacos', 'Beef tacos with soup',
      'Dinner', 30, 180, 6, 5, TRUE, 'Dip in soup'),
  (1, 'Chinese Orange Chicken',
      'Crispy chicken in sweet orange sauce',
      'Dinner', 25, 20, 4, 5, TRUE, 'Serve with rice');

-- Sample INGREDIENTS
INSERT INTO Ingredients (recipe_id, name, quantity, unit) VALUES
  -- Spicy Shawarma (recipe_id = 1)
  (1, 'Chicken', 2, 'cups'),
  (1, 'Yogurt', 1, 'cup'),
  (1, 'Spices', 3, 'tbsp'),
  (1, 'Chili', 2, 'tsp'),
  (1, 'Garlic', 5, 'cloves'),
  (1, 'Lemon', 2, 'tbsp'),
  (1, 'Oil', 3, 'tbsp'),
  (1, 'Pita', 4, 'pieces'),
  (1, 'Garlic Sauce', 1, 'cup'),

  -- Birria Tacos (recipe_id = 2)
  (2, 'Beef', 3, 'pounds'),
  (2, 'Chilies', 9, 'pieces'),
  (2, 'Onion', 1, 'whole'),
  (2, 'Garlic', 6, 'cloves'),
  (2, 'Tomato', 2, 'whole'),
  (2, 'Stock', 6, 'cups'),
  (2, 'Tortillas', 12, 'pieces'),
  (2, 'Cheese', 1, 'cup'),

  -- Chinese Orange Chicken (recipe_id = 3)
  (3, 'Chicken', 1.5, 'pounds'),
  (3, 'Orange Juice', 1, 'cup'),
  (3, 'Soy Sauce', 3, 'tbsp'),
  (3, 'Brown Sugar', 3, 'tbsp'),
  (3, 'Garlic', 3, 'cloves'),
  (3, 'Ginger', 1, 'tbsp'),
  (3, 'Cornstarch', 4, 'tbsp'),
  (3, 'Oil', 4, 'tbsp'),
  (3, 'Green Onion', 2, 'stalks');

-- Sample STEPS
INSERT INTO Steps (recipe_id, step_number, instruction) VALUES
  -- Spicy Shawarma (1)
  (1, 1, 'Mix yogurt and spices'),
  (1, 2, 'Add chicken, refrigerate for 1 hour'),
  (1, 3, 'Cook in pan or oven'),
  (1, 4, 'Cut chicken thin'),
  (1, 5, 'Put in pita with garlic sauce, fries, and pickles'),

  -- Birria Tacos (2)
  (2, 1, 'Cook chilies in water'),
  (2, 2, 'Blend with onion'),
  (2, 3, 'Cook beef for 45 minutes in the pressure cooker on high mode'),
  (2, 4, 'Fill tortillas'),
  (2, 5, 'Fry and serve'),

  -- Chinese Orange Chicken (3)
  (3, 1, 'Cut chicken into small pieces and coat with cornstarch'),
  (3, 2, 'Fry chicken pieces in oil until golden and cooked through'),
  (3, 3, 'In a pan, mix orange juice, soy sauce, brown sugar, garlic, and ginger'),
  (3, 4, 'Simmer sauce until slightly thick'),
  (3, 5, 'Toss fried chicken in the orange sauce and top with green onions');

-- Sample TAGS
INSERT INTO Tags (tag_name) VALUES
  ('Spicy'),
  ('Chicken'),
  ('Grill'),
  ('Beef'),
  ('Slow'),
  ('Taco');

-- Sample RECIPE_TAGS
-- (assumes tag ids: 1=Spicy, 2=Chicken, 3=Grill, 4=Beef, 5=Slow, 6=Taco)
INSERT INTO Recipe_Tags (recipe_id, tag_id) VALUES
  -- Spicy Shawarma
  (1, 1),
  (1, 2),
  (1, 3),

  -- Birria Tacos
  (2, 4),
  (2, 5),
  (2, 6),

  -- Chinese Orange Chicken
  (3, 1),
  (3, 2);