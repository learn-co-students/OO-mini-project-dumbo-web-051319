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
    new_hash = Hash.new(0)
    Allergy.all.each do |allergen|
      new_hash[allergen.ingredient] += 1
      end
      new_hash.max_by {|k,v| v}[0]
    end

end
