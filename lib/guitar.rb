require 'pry'
require_relative "soda.rb"

class Guitar

  attr_reader :model, :brand
  attr_accessor :pickup_type, :color

  def initialize(model:, brand:, pickup_type:, color:)
    @model = model
    @brand = brand
    @pickup_type = pickup_type
    @color = color
    @soda = nil
  end

  def soda
    @soda
  end

  def soda=(soda)
    @soda = soda
    soda.guitar = self
  end

  def play_sweet_riff
    puts "You played a face melting riff!"
    take_a_drink
  end

  def take_a_drink
    soda.drink_a_soda
    puts "You drank your soda!"
  end
end

binding.pry
