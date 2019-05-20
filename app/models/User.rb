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
  end

  def add_recipe_card(date, rating, recipe)
    # accepts Recipe istance
     # creates new recipe card
     # RecipeCard.new(date, rating, self, recipe)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    # return all ingredients this user is allergic to
    # thru Allergy.all
    # find Allergy.user == self
  end

  def top_three_recipes
    # return top three highest rated recipe cards
    # iterate thru recipe cards
    # finding rating
  end

  def most_recent_recipe
    # return recipe most recently added to users cookbook
    # add_recipe_card ?
  end

end
