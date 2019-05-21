require "pry"
class User
  attr_reader :name
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def add_recipe_card (name, recipe, date, rating)
    RecipeCard.new(name, self, recipe, date, rating)
  end
  def recipes
    RecipeCard.all.select {|recipecard| recipecard.user == self}
  end
  def declare_allergy (name, ingredient)
    Allergy.new(name, self, ingredient)
  end
  def allergens
    arry = []
    arry = Allergy.all.select {|allergen| allergen.user == self}
    arry.map {|allergen| allergen.ingredient.name}
  end
  def top_three_recipes
    ary = RecipeCard.all.select {|recipecard| recipecard.user == self}
    hash_temp = {}
    ary.each {|recipecard| hash_temp[recipecard] = recipecard.rating}
    hash_temp.sort_by{|ingredient, rating| rating}.map {|recipecard|  recipecard[0].recipe}.reverse
  end
  def most_recent_recipe
    # month_str = self.recipes.sort_by{|recipecard| recipecard.date[0..1].to_i}[-1].date[0..1]
    # ary_temp = self.recipes.select{|recipecard| recipecard.date[0..1] == month_str}
    # ary_temp.sort_by{|recipecard| recipecard.date[3..4].to_s}[-1].recipe
    # binding.pry
    self.recipes.select{|recipecard| recipecard.date[0..1] == self.recipes.sort_by{|recipecard| recipecard.date[0..1].to_i}[-1].date[0..1]}.sort_by{|recipecard| recipecard.date[3..4].to_s}[-1].recipe
  end
  def safe_recipes
    #get allergy of the user
    allergytemp = Allergy.all.select {|allergy| allergy.user == self}
    #get allergy ingredient
    allergy_ingredient_temp = allergytemp.map {|allergy| allergy.ingredient}
    #get recipe of the user
    recipetemp = RecipeCard.all.select {|recipecard| recipecard.user == self}.map {|recipecard| recipecard.recipe}
    #get ingredients of all recipe
    ## creating a recipe_with_ingredients Hash
    recipe_with_ingredients = {}
    recipetemp.each {|recipe| recipe_with_ingredients[recipe]}
    recipetemp.each do |recipe|
      RecipeIngredient.all.each do |recipeingredient|
        if recipeingredient.recipe == recipe
          recipe_with_ingredients[recipe] = recipeingredient.ingredient.flatten
        end
      end
    end
    #get the safe_recipes
    recipe_with_ingredients.map do |recipe, ingredients|
      counter = 0
      ingredients.each do |ingredient|
        if allergy_ingredient_temp.include?(ingredient)
          counter +=1
        end
      end
      if counter == 0
        recipe
      end
    end.compact
  end
end
