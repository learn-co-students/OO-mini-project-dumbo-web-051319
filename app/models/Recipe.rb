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

    new_hash = Hash.new(0)
    RecipeCard.all.each do |rc|
      new_hash[rc.recipe] += 1
    end
    new_hash.max_by{|k,v| v}[0]
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
    recipe_ingredients.each do |x|
      Allergy.all.each do |allergy|
        if allergy.ingredient == x.ingredient
          allergen_array << x.ingredient
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
