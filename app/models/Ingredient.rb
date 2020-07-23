class Ingredient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name.capitalize
    @@all << self
  end

  def self.most_common_allergen
    Allergy.all.to_a.group_by{|e| e.ingredient}.values.max_by(&:size).first
  end

  def self.all
    @@all
  end
end
