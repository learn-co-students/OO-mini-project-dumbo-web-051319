class User
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    # returns all recipes of this user
    # thru recipe card
    RecipeCard.all.select {|rc| rc.user == self}
  end

  def add_recipe_card(date, rating, recipe)
    # accepts Recipe istance
     # creates new recipe card
     RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    # return all ingredients this user is allergic to
    # thru Allergy.all
    Allergy.all.select {|allergen| allergen.user == self}
  end

  def top_three_recipes
  our_recipes = self.recipes
  sorted_recipes = our_recipes.sort {|x, y| y.rating <=> x.rating}
  sorted_recipes[0..2]
  end

  def most_recent_recipe
    # return recipe most recently added to users cookbook
    # add_recipe_card ?
    recipes[-1]
  end

  # def safe_recipes
  #   # know the users allergens then compare to the list of ingredients
  #   allergic = self.allergens
  #   not_safe = allergic.map {|x| x.ingredient}
  #   not_safe.each do |x|
  #     safe = RecipeIngredient.all.delete_if {|card| card.ingredient == x}
  #     safe_r = safe.map {|y| y.recipe}
  #   end
  #   safe_r.uniq
  # end

end
