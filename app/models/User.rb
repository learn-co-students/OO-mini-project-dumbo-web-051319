class User
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select{|card| card.user == self}
  end

  def allergens
    Allergy.all.select{|alg| alg.user == self}
  end

  def add_recipe_card(recipe, rating, date = Time.now)
    RecipeCard.new(recipe, self, rating, date)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def top_three_recipes
    recipes.sort_by{|recipe| recipe.rating}.reverse[0..2]
  end

  def most_recent_recipe
    recipes.last
  end

  def safe_recipes
    alg = self.allergens.map{|a| a.ingredient}
    Recipe.all.select{|recipe| (recipe.ingredients & alg).empty?}
  end

  def self.all
    @@all
  end
end
