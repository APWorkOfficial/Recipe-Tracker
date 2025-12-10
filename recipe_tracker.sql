-- Create database 
DROP DATABASE IF EXISTS recipe_tracker;
CREATE DATABASE recipe_tracker;
USE recipe_tracker;

-- USERS table
CREATE TABLE Users (
  user_id   INT AUTO_INCREMENT PRIMARY KEY,
  username  VARCHAR(50) NOT NULL
);

-- RECIPES table
CREATE TABLE Recipes (
  recipe_id     INT AUTO_INCREMENT PRIMARY KEY,
  user_id       INT NOT NULL,
  name          VARCHAR(100) NOT NULL,
  description   TEXT,
  category      VARCHAR(50),
  prep_time_min INT,
  cook_time_min INT,
  servings      INT,
  rating        INT,
  is_favorite   BOOLEAN,
  notes         TEXT,
  CONSTRAINT fk_recipes_user
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- INGREDIENTS table
CREATE TABLE Ingredients (
  ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
  recipe_id     INT NOT NULL,
  name          VARCHAR(100) NOT NULL,
  quantity      DECIMAL(6,2),
  unit          VARCHAR(20),
  CONSTRAINT fk_ing_recipe
    FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id)
);

-- STEPS table
CREATE TABLE Steps (
  step_id     INT AUTO_INCREMENT PRIMARY KEY,
  recipe_id   INT NOT NULL,
  step_number INT NOT NULL,
  instruction TEXT NOT NULL,
  CONSTRAINT fk_steps_recipe
    FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id)
);

-- TAGS table
CREATE TABLE Tags (
  tag_id   INT AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(50) NOT NULL UNIQUE
);

-- RECIPE_TAGS bridge table
CREATE TABLE Recipe_Tags (
  recipe_id INT NOT NULL,
  tag_id    INT NOT NULL,
  PRIMARY KEY (recipe_id, tag_id),
  CONSTRAINT fk_rt_recipe FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  CONSTRAINT fk_rt_tag    FOREIGN KEY (tag_id)    REFERENCES Tags(tag_id)
);
