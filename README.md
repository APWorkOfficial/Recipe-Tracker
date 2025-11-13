Recipe Tracker Database

This database keeps recipes organized for multiple users. I used 6 tables: Users, Recipes, Ingredients, Steps, Tags, and Recipe_Tags.

Users table tracks who owns the recipes with user_id and username.

  - Recipes is the main table. It holds recipe_id, user_id, name, description, category, prep and cook time, servings, rating, notes, and favorite.
  
  - Ingredients and Steps connect to Recipes with foreign keys so details stay linked to each recipe.
  
  - Tags lets you label recipes like "Spicy" or "Taco". Recipe_Tags connects recipes to many tags.

Challenge: I had to find recipes I saved that I know are tasty.  
Solution: I picked Spicy Shawarma and Birria Tacos, both 5-star favorites I loved & made before.
