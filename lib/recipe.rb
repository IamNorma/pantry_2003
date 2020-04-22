class Recipe
  attr_reader :name,
              :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, amount_required)
    if @ingredients_required[ingredient] == nil
      @ingredients_required[ingredient] = amount_required
    else
      @ingredients_required[ingredient] += amount_required
    end 
  end
end
