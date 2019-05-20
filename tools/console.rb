require_relative '../config/environment.rb'

recipe1 = Recipe.new("Banana Cake")
recipe2 = Recipe.new("Cinnamon Cake")

ing_1 = Ingredient.new("flour")
ing_2 = Ingredient.new("egg")
ing_3 = Ingredient.new("milk")
ing_4 = Ingredient.new("sugar")
ing_5 = Ingredient.new("butter")

user1 = User.new("Tess")
user2 = User.new("Tanuka")

allergy1 = Allergy.new(ing_1, user1)
allergy2 = Allergy.new(ing_2, user2)

recipe_card1 = RecipeCard.new("5/20/2019", 5, user1, recipe1)
recipe_card2 = RecipeCard.new("5/20/2019", 10, user1, recipe2)
recipe_card3 = RecipeCard.new("5/20/2019", 2, user2, recipe1)
recipe_card4 = RecipeCard.new("5/20/2019", 8, user2, recipe2)
recipe_card5 = RecipeCard.new("5/20/2019", 4, user2, recipe2)


recipe_ing1 = RecipeIngredient.new(ing_1, recipe1)
recipe_ing2 = RecipeIngredient.new(ing_2, recipe1)
recipe_ing3 = RecipeIngredient.new(ing_3, recipe1)
recipe_ing4 = RecipeIngredient.new(ing_4, recipe1)
recipe_ing5 = RecipeIngredient.new(ing_1, recipe2)
recipe_ing6 = RecipeIngredient.new(ing_2, recipe2)

fun_recipe = user2.add_recipe_card("5/19/2019", 9, recipe2)

binding.pry
