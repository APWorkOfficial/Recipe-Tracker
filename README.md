**Recipe Tracker Database**

This database keeps recipes organized for multiple users. I used 6 tables: Users, Recipes, Ingredients, Steps, Tags, and Recipe_Tags.

Users table tracks who owns the recipes with user_id and username.

  - Recipes is the main table. It holds recipe_id, user_id, name, description, category, prep and cook time, servings, rating, notes, and favorite.
  
  - Ingredients and Steps connect to Recipes with foreign keys so details stay linked to each recipe.
  
  - Tags lets you label recipes like "Spicy" or "Taco". Recipe_Tags connects recipes to many tags.

**How to run the scripts**

1. Open MySQL Workbench and connect to your server.  
2. Run `recipe_tracker.sql` to create the database and tables.  
3. Run `sample_data.sql` to insert the sample users, recipes, ingredients, steps, tags, and recipe_tags.  
4. Run `queries_and_views.sql` to execute the example queries and create the views.


**Key queries and what they do**

1. **List all recipes with user and rating** – shows each recipe, who owns it, its category, and rating.  
2. **Show ingredients for one recipe** – returns the ingredient list (name, quantity, unit) for a chosen recipe.  
3. **Show preparation steps for one recipe** – displays the ordered cooking steps for a specific recipe.  
4. **Average rating by category** – calculates the average rating for each recipe category.  
5. **View: recipe ingredient count** – shows each recipe and how many ingredients it uses.  
6. **View: recipe overview with total time** – shows each recipe with its user, category, and total time (prep + cook).

Challenge: I had to find recipes I saved that I know are tasty.  
Solution: I picked Orange Chicken, Spicy Shawarma and Birria Tacos, all 5-star favorites I loved & made before.
