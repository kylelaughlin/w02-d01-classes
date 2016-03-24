require 'pry'
require_relative "soda.rb"
#require_relative "guitar_player.rb"

class Guitar

  attr_reader :model, :brand
  attr_accessor :pickup_type, :color, :sweet_riffs_executed

  #Construction method for Guitar
  #
  # +model: string
  # +brand: string
  # +pickup_type: string
  # +color: string
  #
  # Constructs the Guiar object
  def initialize(model:, brand:, color:)
    @model = model
    @brand = brand
    @pickup_type = pickup_type
    @color = color
    @soda = nil
    @player = nil
    @sweet_riffs_executed = 0
  end

  def player
    @player
  end

  def player=(player)
    @player = player
  end

  def soda
    @soda
  end

  def soda=(soda)
    @soda = soda
    soda.guitar = self
  end

  # Guitar object plays a sweet riff displays message and calls take_a_drink
  #
  # Returns nil
  def play_sweet_riff
    puts "You played a face melting riff!"
    take_a_drink
  end

  # Calls the drink_a_soda method in the Soda class and displays a message
  #
  # Returns nil
  def take_a_drink
    soda.drink_a_soda
    puts "You drank your soda!"
  end
end
