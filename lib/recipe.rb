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

  def ingredients
    @ingredients_required.map do |ingredient, amount_required|
      ingredient
    end
  end

  def total_calories
    total = 0
    @ingredients_required.each do |ingredient, amount_required|
      total += ingredient.calories * amount_required
    end
    total 
  end
end
