
class Recipe

    attr_accessor :recipe_name

    @@all = []

    def initialize(recipe_name)
        @recipe_name = recipe_name
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.most_popular
    #     @@all.select 
    # end

    def recipe_cards
        RecipeCard.all.select {|card| card.recipe == self }
    end

    def users
        recipe_cards.map {|card| card.user}
    end

    def recipes
       RecipeIngredient.all.select {|ing| ing.recipe == self} 
    end 
    
    def ingredients
       recipes.map {|recipe| recipe.ingredient} 
    end   

    def allergens

        Allergy.allergy_ing & self.ingredients
        ## compares and returns same elements

        # Allergy.all.select do |allergy|
        #    ingredients.find do |ing|  
        #          allergy.ingredient == ing      
        #     end  
        # end 
        
    end 
    
    def add_ingredients(ing_array)
        (self.ingredients << ing_array).flatten    
    end   

    def self.most_popular
        
    end    
end