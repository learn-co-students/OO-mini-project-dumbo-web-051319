
class User
    attr_accessor :user_name, :allergy

    @@all = []

    def initialize(user_name)
        @user_name = user_name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select {|card| card.user == self}
    end
    
    def recipes
        recipe_cards.map {|card| card.recipe}
    end

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end

    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
    end
    
    
end