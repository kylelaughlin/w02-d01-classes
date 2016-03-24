require_relative 'test_helper.rb'
require_relative '../lib/guitar.rb'

class GuitarTest < Minitest::Test

  def test_guitar_created_under_normal_circumstances
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    refute_nil(guitar)
  end

  def test_model_getter
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    assert_equal("Les Paul", guitar.model)
  end

  def test_brand_getter
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    assert_equal("Gibson", guitar.brand)
  end

  def test_color_getter
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    assert_equal("Red", guitar.color)
  end

  def test_color_setter
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    guitar.color = "Blue"
    assert_equal("Blue", guitar.color)
  end

  def test_associate_guitar_with_soda
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 24, sugar: 20, parent_company: "Pepsi")
    assert_nil(guitar.soda)
    guitar.soda = soda
    refute_nil(guitar.soda)
  end

  def test_play_a_sweet_riff_drink_a_soda
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 24, sugar: 20, parent_company: "Pepsi")
    guitar.soda = soda
    assert_equal(0, soda.sodas_drank)
    guitar.play_sweet_riff
    assert_equal(1, soda.sodas_drank)
  end

  def test_guitar_getter
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 24, sugar: 20, parent_company: "Pepsi")
    assert_nil(soda.guitar)
    soda.guitar = guitar
    refute_nil(soda.guitar)
  end

  def test_guitar_setter
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 24, sugar: 20, parent_company: "Pepsi")
    soda.guitar = guitar
    assert_equal(guitar, soda.guitar)
  end

  def test_take_a_drink
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", color: "Red")
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 24, sugar: 20, parent_company: "Pepsi")
    guitar.soda = soda
    assert_equal(0, soda.sodas_drank)
    guitar.take_a_drink
    assert_equal(1, soda.sodas_drank)
  end

end
