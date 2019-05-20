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
    new_hash = {}
    RecipeCard.all.each do |rc|
      if new_hash[rc.recipe]
        new_hash[rc.recipe] += 1
      else
        new_hash[rc.recipe] = 1
      end
    end
    new_hash.max_by {|k,v| v}
  end

  def users
    recipe_array = RecipeCard.all.select {|recipe_c|recipe_c.recipe == self}
      recipe_array.map {|recipe| recipe.user}
  end

  def ingredients
    # returns ALL ingredients in this recipe
    RecipeIngredient.all.select {|r_i| r_i.recipe == self}
  end

  def allergens
    # returns all ingredients in this recipe that are allergens USERS in our system
    allergen_array = []
    recipe_ingredients = self.ingredients
    recipe_ingredients.each do |rc|
      Allergy.all.each do |allergy|
        if allergy.ingredient == rc.ingredient
          allergen_array << rc.ingredient
        end
      end
    end
    allergen_array.uniq
  end

  def add_ingredients(ingredients)
    # takes an array of ingredient instances as an arg, and associate each of those ingredient with this recipe
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end

end
