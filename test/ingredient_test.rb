require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test
  def test_it_exists
    ingredient1 = Ingredient.new({
      name: "Cheese",
      unit: "oz",
      calories: 50})
  end

end
