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
    #make a hash with key as ingredient and value as 0 for counter
    @@all.each do |ingredient|
      #getting the ingredient in Class Ingredient
      Allergy.all.each do |allergy|
        #getting the allergy in Class Allergy
        if allergy.ingredient == ingredient
          #maching ingredient in allergy with ingredient in Class Ingredient
          hash_temp[ingredient] += 1
          # if true add 1 for ingredient in Class Ingredient
        end
      end
    end
    #sorting hash_tamp by counter and return as a 2D array
    hash_temp.sort_by{|ingredient, count| count}[-1][0]
    #returning the last element of the 2D array and get the first index of the 1D array
  end
end
