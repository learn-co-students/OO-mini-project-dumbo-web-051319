class Recipe
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_popular
    # recipe instances with most recipe cards
    # thru RecipeCard.all recipecard.recipe == self
  end

  def users
    # user intances with recipe cards with this Recipe
  end

  def ingredients
    # returns ALL ingredients in this recipe
    RecipeIngredient.all.select {|r_i| r_i.recipe == self}

  end

  def allergens
    # returns all ingredients in this recipe that are allergens USERS in our system
  end

  def add_ingredients(ingredients)
    # takes an array of ingredient instances as an arg, and associate each of those ingredient with this recipe
  end

end
