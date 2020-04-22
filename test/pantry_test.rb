require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test
  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_it_starts_with_no_stock
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
  end

  def test_it_can_do_stock_check
    pantry = Pantry.new
    ingredient1 = Ingredient.new({
      name: "Cheese",
      unit: "oz",
      calories: 50})

    assert_equal 0, pantry.stock_check(ingredient1)
  end
end
