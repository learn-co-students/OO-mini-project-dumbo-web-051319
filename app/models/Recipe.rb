
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
        new_hash = Hash.new(0)
        recipe = RecipeCard.all.map {|card| card.recipe}
        recipe.map {|recipe| new_hash[recipe] += 1}
        new_hash.map {|recipe, count| return recipe if count == new_hash.values.max}
    end    
end