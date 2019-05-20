require_relative '../config/environment.rb'

# users
rachel = User.new("Rachel")
daniela = User.new("Daniela")
pam = User.new("Pam")

# ingredient
banana = Ingredient.new("banana")
cream = Ingredient.new("cream")
crust = Ingredient.new("crust")
vanilla = Ingredient.new("vanilla")

#allergy

rachel_banana_allergy = Allergy.new(rachel, banana)


# recipe
banana_pie = Recipe.new("Banana Pie")

#RecipeIngredient

one_banana = RecipeIngredient.new(banana, banana_pie)
one_crust = RecipeIngredient.new(crust, banana_pie)
one_cream = RecipeIngredient.new(cream, banana_pie)


# recipecard
pam_recipecard = RecipeCard.new("May 1", 8, pam, banana_pie)


binding.pry
