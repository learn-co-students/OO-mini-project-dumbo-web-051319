

class Recipe 
    attr_accessor :user, :allergens

    def initialize(*ingredients)
        @user = user
        @allergens = allergens

    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(ingredient, self)
        end
    end

    def recipe_ingredients
        RecipeIngredient.all.select do |recipe_ingredient|
            recipe_ingredient.recipe == self
        end
    end

    def ingredients
        recipe_ingredients.map { |recipe_ingredient| recipe_ingredient.ingredient }
    end
end