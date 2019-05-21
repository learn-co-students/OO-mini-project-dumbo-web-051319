require_relative '../config/environment.rb'

recipe1 = Recipe.new("Banana Cake")
recipe2 = Recipe.new("Cinnamon Cake")
recipe3 = Recipe.new("Chicken Thighs")
recipe4 = Recipe.new("Beef and Broccoli")
recipe5 = Recipe.new("Chocolate Cake")
recipe6 = Recipe.new("Fruit Tart")
recipe7 = Recipe.new("Meatloaf")
recipe8 = Recipe.new("Gluten Free Chocolate Cake")

ing_1 = Ingredient.new("flour")
ing_2 = Ingredient.new("egg")
ing_3 = Ingredient.new("milk")
ing_4 = Ingredient.new("sugar")
ing_5 = Ingredient.new("butter")

user1 = User.new("Tess")
user2 = User.new("Tanuka")
user3 = User.new("Jenn")
user4 = User.new("Margaret")
user5 = User.new("Savannah")
user6 = User.new("Chloe")

allergy1 = Allergy.new(ing_1, user1)
allergy2 = Allergy.new(ing_1, user2)
allergy3 = Allergy.new(ing_3, user2)
allergy4 = Allergy.new(ing_3, user1)
allergy5 = Allergy.new(ing_5, user4)
allergy6 = Allergy.new(ing_3, user5)


recipe_card1 = RecipeCard.new(Time.new, 5, user1, recipe1)
recipe_card2 = RecipeCard.new(Time.new, 10, user1, recipe2)
recipe_card3 = RecipeCard.new(Time.new, 2, user2, recipe8)
recipe_card4 = RecipeCard.new(Time.new, 8, user2, recipe2)
recipe_card5 = RecipeCard.new("1/20/2019", 4, user5, recipe3)
recipe_card6 = RecipeCard.new("2/20/2019", 10, user2, recipe4)
recipe_card7 = RecipeCard.new("5/10/2019", 9, user1, recipe5)
recipe_card8 = RecipeCard.new("5/1/2019", 8, user4, recipe8)
recipe_card9 = RecipeCard.new("5/4/2019", 10, user1, recipe7)
recipe_card10 = RecipeCard.new("5/5/2019", 5, user1, recipe8)
recipe_card11 = RecipeCard.new("4/27/2019", 10, user2, recipe5)
recipe_card12 = RecipeCard.new("5/8/2019", 2, user2, recipe6)
recipe_card13 = RecipeCard.new("5/4/2019", 8, user5, recipe2)
recipe_card14 = RecipeCard.new("5/3/2019", 4, user3, recipe8)
recipe_card15 = RecipeCard.new("5/2/2019", 9, user1, recipe3)
recipe_card16 = RecipeCard.new("2/1/2019", 10, user4, recipe8)




recipe_ing1 = RecipeIngredient.new(ing_1, recipe1)
recipe_ing2 = RecipeIngredient.new(ing_2, recipe1)
recipe_ing3 = RecipeIngredient.new(ing_3, recipe1)
recipe_ing4 = RecipeIngredient.new(ing_4, recipe1)
recipe_ing5 = RecipeIngredient.new(ing_1, recipe2)
recipe_ing6 = RecipeIngredient.new(ing_2, recipe2)

fun_recipe = user2.add_recipe_card("5/19/2019", 9, recipe2)

binding.pry
