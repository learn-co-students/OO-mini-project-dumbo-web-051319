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
strawberry = Ingredient.new("strawberry")
sugar = Ingredient.new("sugar")

#allergy

rachel_banana_allergy = Allergy.new(rachel, banana)
pam_vanilla_allergy = Allergy.new(pam, vanilla)
daniela_vanilla_allergy = Allergy.new(daniela, vanilla)


# recipe
banana_pie = Recipe.new("Banana Pie")
strawberry_pie = Recipe.new("Strawberry Pie")
parfait = Recipe.new("Parfait")
icecream = Recipe.new("Ice cream")

#RecipeIngredient

one_banana = RecipeIngredient.new(banana, banana_pie)
one_crust = RecipeIngredient.new(crust, banana_pie)
one_cream = RecipeIngredient.new(cream, banana_pie)
one_strawberry = RecipeIngredient.new(strawberry, strawberry_pie)
one_sugar = RecipeIngredient.new(sugar, strawberry_pie)
two_crust = RecipeIngredient.new(crust, strawberry_pie)
one_vanilla = RecipeIngredient.new(vanilla, parfait)
two_cream = RecipeIngredient.new(cream, icecream)
two_sugar = RecipeIngredient.new(sugar, icecream)


# recipecard
pam_recipecard_banana_pie = RecipeCard.new("May 1", 8, pam, banana_pie)
rachel_recipecard_strawberry_pie = RecipeCard.new("Oct 12", 7, rachel, strawberry_pie)
daniela_recipecard_strawberry_pie = RecipeCard.new("May 2", 5, daniela, strawberry_pie)
pam_recipecard_strawberry_pie = RecipeCard.new("March 12", 10, pam, strawberry_pie)
pam_recipecard_icecream = RecipeCard.new("August 3", 9, pam, icecream)
pam_recipecard_parfait = RecipeCard.new("May 4", 1, pam, parfait)

# array of ingredients
[cream, sugar, vanilla]


binding.pry
0
