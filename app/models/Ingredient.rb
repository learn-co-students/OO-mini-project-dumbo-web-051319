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
      allergens = Allergy.allergy_ing
      allergens.max_by {|i| allergens.count(i)}
    end
end
