require 'pry'

class Soda

  attr_accessor :brand, :calories, :volume, :sugar, :parent_company

  def initialize(brand:, calories:, volume:, sugar:, parent_company:)
    @brand = brand
    @calories = calories
    @volume = volume
    @sugar = sugar
    @parent_company = parent_company
  end

end
