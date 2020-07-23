
class Ingredient

    attr_accessor :ingredient_name

    @@all = []

    def initialize(ingredient_name)
        @ingredient_name = ingredient_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen 
        allergy_hash = Hash.new(0)
        Allergy.all.map {|allergy| allergy_hash[allergy.ingredient] += 1}
        allergy_hash.map {|recipe, count| return recipe if count == allergy_hash.values.max}
    end
end