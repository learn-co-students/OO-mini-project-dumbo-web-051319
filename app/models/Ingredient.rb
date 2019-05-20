class Ingredient
  attr_reader :name
  @@all = []
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def self.most_common_allergen
    hash_temp = {}
    @@all.each{|ingredient| hash_temp[ingredient] = 0}
    #make a hash
    @@all.each do |ingredient|
      #getting the recipe
      Allergy.all.each do |allergy|
        if allergy.ingredient == ingredient
          #card recipe with recipe in Class Recipe
          hash_temp[ingredient] += 1
        end
      end
    end
    hash_temp.sort_by{|ingredient, count| count}[-1][0]
  end
end
