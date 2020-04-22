class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.map do |recipe|
    recipe.ingredients_required.map do |ingredient, amount_required|
      ingredient.name
    end
    end.flatten.uniq
  end
end
