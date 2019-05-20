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
end
