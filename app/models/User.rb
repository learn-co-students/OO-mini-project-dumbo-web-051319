
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
    # return top three highest rated recipe cards
    # iterate thru recipe cards
  #   # finding rating
  #   new_array = []
  #     RecipeCard.all.each do |rc|
  #     new_array << rc.rating.sort {|x, y| y <=> x}
  # end
  # new_array[0..2]

  # return the top three highest rated recipes for this user
      RecipeCard.all.sort { |a, b| b.rating <=> a.rating }.first(3).map { |card| card.recipe }

  end

  def most_recent_recipe
    # return recipe most recently added to users cookbook
    # add_recipe_card ?
    recipes[-1]
  end

end
