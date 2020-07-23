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
    # return ingredient instance most users are allergic too
    # Allergy.all find Allergy.ingredient == self
    # find most common allergen
    new_hash = {}
    # hash.new(0) for syntactic sugar to add things like new_hash[allergen.ingredient]
    Allergy.all.each do |allergen|
      if new_hash[allergen.ingredient]
        new_hash[allergen.ingredient] += 1
      else
        new_hash[allergen.ingredient] = 1
      end
    end
    new_hash.max_by {|k,v| v}
  end

end
