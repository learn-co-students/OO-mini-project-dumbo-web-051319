require 'pry'
require './Ingredient'
require './Recipe'
require './RecipeCard'
require './User'
require './Allergy' 
require './RecipeIngredient'



peanut = Ingredient.new('peanut', true)
soybean = Ingredient.new('soybean', true)
egg = Ingredient.new('egg', true)
fish = Ingredient.new('fish', true)
apple = Ingredient.new('apple', false) 
flour = Ingredient.new('flour', true) 
sugar = Ingredient.new('sugar', false) 
milk = Ingredient.new('milk', true) 
banana = Ingredient.new('banana', false) 


banana_pudding = Recipe.new(banana, milk, egg)
banana_pie = Recipe.new(flour, banana, sugar)
peanut_fish = Recipe.new(peanut, fish)
sugar_apple = Recipe.new(sugar, apple)

Tom = User.new("Tom", "milk")
Stefanos = User.new("Stefanos", "peanuts")
Muhammed = User.new("Muhammed", "fish") 

binding.pry