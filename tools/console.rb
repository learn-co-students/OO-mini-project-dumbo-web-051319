require_relative '../config/environment.rb'

tom_u = User.new("Tom")
tim_u = User.new("Tim")
ken_u = User.new("Ken")

pencake_r = Recipe.new("Pencake")
chocolate_r = Recipe.new("Chocolate")
fruitpunch_r = Recipe.new("Fruitpunch")

pencake_rc_tom_u = tom_u.add_recipe_card("Pencake_RC_Tom", pencake_r, "05/10", 7)
pencake_rc_ken_u = ken_u.add_recipe_card("Pencake_RC_Tom", pencake_r, "04/12", 10)
chocolate_rc_tim_u = tim_u.add_recipe_card("Chocolate_RC_Tim", chocolate_r,"03/20", 2)
fruitpunch_rc_tim_u = tim_u.add_recipe_card("Fruitpunch_RC_Tim", fruitpunch_r, "04/20", 4)
pencake_rc_tim_u = tim_u.add_recipe_card("Pencake_RC_Tim", pencake_r, "04/10", 10)


egg_i = Ingredient.new("egg")
coco_i = Ingredient.new("coco")
butter_i = Ingredient.new("butter")
milk_i = Ingredient.new("milk")
onion_i = Ingredient.new("onion")
galic_i = Ingredient.new("galic")

egg_all = ken_u.declare_allergy("Egg Allergy", egg_i)
butter_all = tim_u.declare_allergy("Butter Allergy", butter_i)
butter_all = tom_u.declare_allergy("Butter Allergy", butter_i)
milk_all = tim_u.declare_allergy("Milk Allergy", milk_i)

pencake_ri = pencake_r.add_ingredients("Pencake_RI",egg_i, butter_i, milk_i)
chocolate_ri = chocolate_r.add_ingredients("Chocolate_RI", coco_i, milk_i)


binding.pry
