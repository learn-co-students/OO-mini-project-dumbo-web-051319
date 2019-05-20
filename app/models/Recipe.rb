require "pry"
class Recipe
  attr_reader :name
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.most_popular
    hash_temp = {}
    @@all.each{|recipe| hash_temp[recipe] = 0}
    #make a hash
    @@all.each do |recipe|
      #getting the recipe
      RecipeCard.all.each do |recipecard|
        if recipecard.recipe == recipe
          #card recipe with recipe in Class Recipe
          hash_temp[recipe] += 1
        end
      end
    end
    hash_temp.sort_by{|recipe, count| count}[-1][0]
  end
  def add_ingredients (name, *ingredient)
    RecipeIngredient.new(name, self, *ingredient)
  end
  def ingredients
    ary = RecipeIngredient.all.select {|recipeIngredient| recipeIngredient.recipe == self}
    ary.map {|recipeIngredient| recipeIngredient.ingredient}.flatten
  end
end
