

class RecipeCard 
    attr_accessor :user, :recipe, :date, :rating
    
    def initialize(user, date, recipe, rating) 
        @user = user
        @date = date
        @recipe = recipe
        @rating = rating

    end    

    

end
