
class Ingredient 
    
    @@all = []
  
    def initialize(ingredient, allergen=false)
          @ingredient = ingredient
          if allergen == true   
            @@all << self 
         end 

    end
    
    def self.all 
        @@all 
    end

    
end

