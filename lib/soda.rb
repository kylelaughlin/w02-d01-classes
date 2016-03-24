require 'pry'
#require_relative "guitar.rb"

class Soda

  attr_accessor :brand, :calories, :volume, :sugar, :parent_company, :sodas_drank

  def initialize(brand:, calories:, volume:, sugar:, parent_company:)
    @brand = brand
    @calories = calories
    @volume = volume
    @sugar = sugar
    @parent_company = parent_company
    @sodas_drank = 0
    @guitar = nil
  end

  # Increases @sodas_drank up by one
  #
  # Returns sodas_drank
  def drink_a_soda
    @sodas_drank += 1
  end

  def guitar
    @guitar
  end

  def guitar=(guitar)
    @guitar = guitar
  end

end
