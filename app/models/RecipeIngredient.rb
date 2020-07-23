class RecipeIngredient
  attr_reader :name, :recipe, :ingredient
  @@all = []
  def initialize (name, recipe, *ingredient)
    @ingredient = []
    @name = name
    @recipe = recipe
    @ingredient << ingredient
    @@all << self
  end
  def self.all
    @@all
  end
end
