require 'pry'

class User
    attr_accessor :name, :recipe, :date
    @@all = []

    def initialize(name, allergies)
        @name = name 
        @allergies = allergies
        @@all << self
    end

    def self.all 
        @@all
        
    end

    def allergns
        
    end

    def add_recipe_card(date, recipe, rating)
      new_card = RecipeCard.new(name, date, recipe, rating)
        
    end

    # def declare_allergy(ingredient, allergy)           

    # end

    def top_three_recipes
    end

    def most_recent_reciepe 
    end


end

