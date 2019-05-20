class Allergy
  # join btwn User and /ingredient
  @@all = []

  attr_accessor :name, :ingredient

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end


end
