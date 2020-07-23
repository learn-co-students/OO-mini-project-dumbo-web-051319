require_relative '../config/environment.rb'

# Users
bill = User.new("Bill")
biff = User.new("Biff")
joe = User.new("Joe")
jim = User.new("Jim")

# Recipes
blt = Recipe.new("BLT")
cheeseburger = Recipe.new("Cheeseburger")
omelet = Recipe.new("Omelet")
salad = Recipe.new("Salad")
bacon_egg_and_cheese = Recipe.new("Bacon Egg & Cheese")

# Recipe Cards
joe_blt = RecipeCard.new(blt, joe, 6)
jim_omelet = RecipeCard.new(omelet, jim, 6)
jim_blt = RecipeCard.new(blt, jim, 8)
jim_salad = RecipeCard.new(salad, jim, 7)
jim_cheeseburger = RecipeCard.new(cheeseburger, jim, 4)
bill_bacon_egg_and_cheese = RecipeCard.new(bacon_egg_and_cheese, bill, 6)
bill_omelet = RecipeCard.new(omelet, bill, 9)
biff_cheeseburger = RecipeCard.new(cheeseburger, biff, 7)

# Ingredients
bacon = Ingredient.new("bacon")
lettuce = Ingredient.new("lettuce")
tomato = Ingredient.new("tomato")
cheese = Ingredient.new("cheese")
bread = Ingredient.new("bread")
egg = Ingredient.new("egg")
onion = Ingredient.new("onion")
beef = Ingredient.new("beef")

# Recipe Ingredients
# # BLT
blt_bacon = RecipeIngredient.new(blt, bacon)
blt_lettuce = RecipeIngredient.new(blt, lettuce)
blt_tomato = RecipeIngredient.new(blt, tomato)
# # Cheeseburger
cheeseburger_beef = RecipeIngredient.new(cheeseburger, beef)
cheeseburger_cheese = RecipeIngredient.new(cheeseburger, cheese)
cheeseburger_bread = RecipeIngredient.new(cheeseburger, bread)
cheeseburger_tomato = RecipeIngredient.new(cheeseburger, tomato)
cheeseburger_onion = RecipeIngredient.new(cheeseburger, onion)
# # Omelet
omelet_egg = RecipeIngredient.new(omelet, egg)
omelet_tomato = RecipeIngredient.new(omelet, tomato)
omelet_bacon = RecipeIngredient.new(omelet, bacon)
omelet_cheese = RecipeIngredient.new(omelet, cheese)
# # Salad
salad_lettuce = RecipeIngredient.new(salad, lettuce)
salad_tomato = RecipeIngredient.new(salad, tomato)
salad_onion = RecipeIngredient.new(salad, onion)
# # Bacon Egg & Cheese
beg_bacon = RecipeIngredient.new(bacon_egg_and_cheese, bacon)
beg_egg = RecipeIngredient.new(bacon_egg_and_cheese, egg)
beg_cheese = RecipeIngredient.new(bacon_egg_and_cheese, cheese)

# Allergies
bill_tomato_alg = Allergy.new(bill, tomato)
joe_egg_alg = Allergy.new(joe, egg)
jim_onion_alg = Allergy.new(jim, onion)
biff_egg_alg = Allergy.new(biff, egg)

binding.pry
