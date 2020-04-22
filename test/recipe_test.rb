require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require 'pry'

class RecipeTest < Minitest::Test
  def test_it_exists
    recipe1 = Recipe.new("Mac and Cheese")

    assert_instance_of Recipe, recipe1
  end

  def test_it_has_a_name
    recipe1 = Recipe.new("Mac and Cheese")

    assert_equal "Mac and Cheese", recipe1.name
  end

  def test_it_starts_with_no_ingredients_required
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({
      name: "Cheese",
      unit: "oz",
      calories: 50})
    ingredient2 = Ingredient.new({
      name: "Macaroni",
      unit: "oz",
      calories: 200})
    expected = {ingredient1 => 6, ingredient2 => 8}

    assert_equal ({}), recipe1.ingredients_required
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)
    assert_equal expected, recipe1.ingredients_required
  end

  def test_it_has_ingredients
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({
      name: "Cheese",
      unit: "oz",
      calories: 50})
    ingredient2 = Ingredient.new({
      name: "Macaroni",
      unit: "oz",
      calories: 200})
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)

    assert_equal [ingredient1, ingredient2], recipe1.ingredients
  end
end
