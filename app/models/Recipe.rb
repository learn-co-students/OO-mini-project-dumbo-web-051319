class Recipe
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    RecipeIngredient.all.select{|ingredient| ingredient.recipe == self}.map{|ingredient| ingredient.ingredient}
  end

  def users
    RecipeCard.all.select{|card| card.recipe == self}.map{|card| card.user}
  end

  def allergens
    self.ingredients.select{|ingredient| Allergy.all.map{|alg| alg.ingredient}.include?(ingredient)}
  end

  def add_ingredients(arr)
    arr.each{|e| RecipeIngredient.new(self, e)}
  end

  def self.most_popular
    RecipeCard.all.map{|card| card.recipe}.to_a.group_by{|e| e}.values.max_by(&:size).first
  end

  def self.all
    @@all
  end
end
