class Ingredient
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    # return ingrediemt instance most users are allergic too
    # Allergy.all find Allergy.ingredient == self
    # find most common allergen
  end

end
