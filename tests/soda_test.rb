require_relative 'test_helper.rb'
require_relative '../lib/soda.rb'

class SodaTest < Minitest::Test

  def test_soda_class_under_normal_circumstances
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    refute_nil(soda)
  end

  def test_brand_getter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    assert_equal("Mt. Dew", soda.brand)
  end

  def test_brand_setter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    soda.brand = "Diet Mt. Dew"
    assert_equal("Diet Mt. Dew", soda.brand)
  end

  def test_calories_getter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    assert_equal(250, soda.calories)
  end

  def test_calories_setter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    soda.calories = 300
    assert_equal(300, soda.calories)
  end

  def test_volume_getter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    assert_equal(20, soda.volume)
  end

  def test_volume_setter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    soda.volume = 24
    assert_equal(24, soda.volume)
  end

  def test_sugar_getter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    assert_equal(20, soda.sugar)
  end

  def test_sugar_setter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    soda.sugar = 34
    assert_equal(34, soda.sugar)
  end

  def test_parent_company_getter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    assert_equal("Pepsi", soda.parent_company)
  end

  def test_parent_company_setter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    soda.parent_company = "Coca Cola"
    assert_equal("Coca Cola", soda.parent_company)
  end

  def test_sodas_drank_getter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    assert_equal(0,soda.sodas_drank)
  end

  def test_sodas_drank_setter
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    soda.sodas_drank = 1
    assert_equal(1, soda.sodas_drank)
  end

  def test_drink_a_soda
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    soda.drink_a_soda
    assert_equal(1,soda.sodas_drank)
  end

  def test_assign_to_a_guitar
    soda = Soda.new(brand: "Mt. Dew", calories: 250, volume: 20, sugar: 20, parent_company: "Pepsi")
    guitar = Guitar.new(model: "Les Paul", brand: "Gibson", pickup_type: "Humbuckers", color: "Red")
    assert_nil(soda.guitar)
    soda.guitar = guitar
    refute_nil(soda.guitar)
  end
  

end
